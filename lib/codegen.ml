(*
   ToyC 编译器代码生成模块
  将 AST 翻译为 RISC-V 32位汇编代码
*)

open Ast
open Riscv

(* 全局标签计数器 *)
let global_label_counter = ref 0

(* 代码生成上下文 *)
type codegen_context =
  { mutable temp_counter : int (* 临时寄存器计数器 *)
  ; mutable stack_offset : int (* 当前栈偏移 *)
  ; mutable break_labels : string list (* break 跳转标签栈 *)
  ; mutable continue_labels : string list (* continue 跳转标签栈 *)
  ; mutable local_vars : (string * int) list (* 局部变量映射到栈偏移 *)
  }

(* 创建新的代码生成上下文 *)
let create_context _symbol_table =
  { temp_counter = 0
  ; stack_offset = 0 (* fp-based offset, starts from 0 and goes down *)
  ; break_labels = []
  ; continue_labels = []
  ; local_vars = []
  }
;;

(* 生成新标签 *)
let new_label _ctx prefix =
  let label = Printf.sprintf "%s%d" prefix !global_label_counter in
  global_label_counter := !global_label_counter + 1;
  label
;;

(* 获取临时寄存器 *)
let get_temp_reg ctx =
  let reg =
    match ctx.temp_counter mod 7 with
    (* T0-T6 *)
    | 0 -> T0
    | 1 -> T1
    | 2 -> T2
    | 3 -> T3
    | 4 -> T4
    | 5 -> T5
    | 6 -> T6
    | _ -> failwith "Should not happen"
  in
  ctx.temp_counter <- ctx.temp_counter + 1;
  reg
;;

(* 将变量添加到栈中 *)
let add_local_var ctx name =
  ctx.stack_offset <- ctx.stack_offset - 4;
  ctx.local_vars <- (name, ctx.stack_offset) :: ctx.local_vars;
  ctx.stack_offset
;;

(* 获取变量的栈偏移 *)
let get_var_offset ctx name =
  try List.assoc name ctx.local_vars with
  | Not_found -> failwith ("Variable not found: " ^ name)
;;

(* Helper function to check if an expression might use A0 *)
let rec expr_might_use_a0 = function
  | Ast.Call _ -> true
  | Ast.BinaryOp (_, e1, e2) -> expr_might_use_a0 e1 || expr_might_use_a0 e2
  | Ast.UnaryOp (_, e) -> expr_might_use_a0 e
  | _ -> false
;;

(* Generate expression code with proper A0 handling *)
let rec gen_expr ctx (expr : Ast.expr) : reg * instruction list =
  match expr with
  | Ast.Int n ->
    let reg = get_temp_reg ctx in
    let instr = [ Li (reg, n) ] in
    reg, instr
  | Ast.Var name ->
    let reg = get_temp_reg ctx in
    let offset = get_var_offset ctx name in
    let instr = [ Lw (reg, offset, Fp) ] in
    reg, instr
  | Ast.UnaryOp (op, e) ->
    let e_reg, e_instrs = gen_expr ctx e in
    let result_reg = get_temp_reg ctx in
    let instrs =
      match op with
      | Ast.Neg -> e_instrs @ [ Sub (result_reg, Zero, e_reg) ]
      | Ast.Not -> e_instrs @ [ Sltiu (result_reg, e_reg, 1) ]
    in
    result_reg, instrs
  | Ast.BinaryOp (op, e1, e2) ->
    (* Check if e2 contains function calls that might overwrite temporary registers *)
    let e2_has_call = expr_might_use_a0 e2 in
    let e1_reg, e1_instrs = gen_expr ctx e1 in
    (* For variables that will be used after a function call, we need special handling *)
    let e1_save_strategy =
      match e1, e2_has_call with
      | Ast.Var var_name, true ->
        (* For variables used after function calls, reload from stack instead of saving to temp reg *)
        `ReloadFromStack var_name
      | _, true when e1_reg = A0 || op = Ast.And || op = Ast.Or ->
        (* For other cases where e1 needs protection and e2 has calls *)
        let temp_reg = get_temp_reg ctx in
        `SaveToReg ([ Mv (temp_reg, e1_reg) ], temp_reg)
      | _, _ when op = Ast.And || op = Ast.Or ->
        (* For logical operations, always save to avoid conflicts *)
        let temp_reg = get_temp_reg ctx in
        `SaveToReg ([ Mv (temp_reg, e1_reg) ], temp_reg)
      | _ -> `NoSave e1_reg
    in
    let e2_reg, e2_instrs = gen_expr ctx e2 in
    (* Get the final e1 register based on the save strategy *)
    let e1_save_instrs, e1_final_reg =
      match e1_save_strategy with
      | `ReloadFromStack var_name ->
        let offset = get_var_offset ctx var_name in
        let reload_reg = get_temp_reg ctx in
        [ Lw (reload_reg, offset, Fp) ], reload_reg
      | `SaveToReg (instrs, reg) -> instrs, reg
      | `NoSave reg -> [], reg
    in
    let result_reg = get_temp_reg ctx in
    let op_instrs =
      match op with
      | Ast.Add -> [ Add (result_reg, e1_final_reg, e2_reg) ]
      | Ast.Sub -> [ Sub (result_reg, e1_final_reg, e2_reg) ]
      | Ast.Mul -> [ Mul (result_reg, e1_final_reg, e2_reg) ]
      | Ast.Div -> [ Div (result_reg, e1_final_reg, e2_reg) ]
      | Ast.Mod -> [ Rem (result_reg, e1_final_reg, e2_reg) ]
      | Ast.Eq ->
        [ Sub (result_reg, e1_final_reg, e2_reg); Sltiu (result_reg, result_reg, 1) ]
      | Ast.Neq ->
        [ Sub (result_reg, e1_final_reg, e2_reg); Sltu (result_reg, Zero, result_reg) ]
      | Ast.Lt -> [ Slt (result_reg, e1_final_reg, e2_reg) ]
      | Ast.Leq ->
        [ Slt (result_reg, e2_reg, e1_final_reg); Xori (result_reg, result_reg, 1) ]
      | Ast.Gt -> [ Slt (result_reg, e2_reg, e1_final_reg) ]
      | Ast.Geq ->
        [ Slt (result_reg, e1_final_reg, e2_reg); Xori (result_reg, result_reg, 1) ]
      | Ast.And | Ast.Or ->
        (* Handled separately in instrs construction *)
        []
    in
    let instrs =
      match op with
      | Ast.And | Ast.Or ->
        (* Special handling for logical operations to prevent register conflicts *)
        let e1_bool_convert = [ Sltu (T5, Zero, e1_final_reg) ] in
        let e2_bool_convert = [ Sltu (T6, Zero, e2_reg) ] in
        let logical_op =
          match op with
          | Ast.And -> [ And (result_reg, T5, T6) ]
          | Ast.Or -> [ Or (result_reg, T5, T6) ]
          | _ -> failwith "Impossible"
        in
        e1_instrs
        @ e2_instrs
        @ e1_save_instrs (* Reload e1 after e2 computation if needed *)
        @ e1_bool_convert
        @ e2_bool_convert
        @ logical_op
      | _ ->
        e1_instrs
        @ e2_instrs
        @ e1_save_instrs (* Reload e1 after e2 computation if needed *)
        @ op_instrs
    in
    result_reg, instrs
  | Ast.Call (fname, args) ->
    let result_reg = A0 in
    let arg_instrs =
      List.mapi
        (fun i arg ->
           let arg_reg, arg_code = gen_expr ctx arg in
           if i < 8
           then (
             (* First 8 arguments go in registers A0-A7 *)
             let target_reg =
               match i with
               | 0 -> A0
               | 1 -> A1
               | 2 -> A2
               | 3 -> A3
               | 4 -> A4
               | 5 -> A5
               | 6 -> A6
               | 7 -> A7
               | _ -> failwith "Impossible"
             in
             arg_code @ [ Mv (target_reg, arg_reg) ])
           else (
             (* Arguments beyond 8 go on stack *)
             (* Stack grows downward, args are at sp + 0, sp + 4, sp + 8, ... *)
             let stack_offset = (i - 8) * 4 in
             arg_code @ [ Sw (arg_reg, stack_offset, Sp) ]))
        args
      |> List.flatten
    in
    (* Reserve stack space for arguments beyond 8 if needed *)
    let num_stack_args = max 0 (List.length args - 8) in
    let stack_space = num_stack_args * 4 in
    let pre_call_instrs =
      if stack_space > 0 then [ Addi (Sp, Sp, -stack_space) ] else []
    in
    let post_call_instrs =
      if stack_space > 0 then [ Addi (Sp, Sp, stack_space) ] else []
    in
    let call_instr = [ Jal (Ra, fname) ] in
    result_reg, pre_call_instrs @ arg_instrs @ call_instr @ post_call_instrs
;;

(* Generate epilogue *)
let gen_epilogue_instrs frame_size =
  [ (* Restore registers from correct stack positions before releasing stack frame *)
    Lw (Ra, frame_size - 4, Sp) (* Restore return address from sp + (frame_size - 4) *)
  ; Lw (T0, frame_size - 8, Sp) (* Load old frame pointer from sp + (frame_size - 8) *)
  ; Addi (Sp, Sp, frame_size) (* Release stack frame *)
  ; Mv (Fp, T0) (* Restore old frame pointer *)
  ; Ret (* Return to caller *)
  ]
;;

(* 生成语句代码 *)
let rec gen_stmt ctx frame_size (stmt : Ast.stmt) : asm_item list =
  match stmt with
  | Ast.Empty -> []
  | Ast.Expr e ->
    let _, instrs = gen_expr ctx e in
    List.map (fun i -> Instruction i) instrs
  | Ast.Block stmts ->
    let old_vars = ctx.local_vars in
    let old_offset = ctx.stack_offset in
    let items = List.map (gen_stmt ctx frame_size) stmts |> List.flatten in
    ctx.local_vars <- old_vars;
    ctx.stack_offset <- old_offset;
    items
  | Ast.Return (Some e) ->
    (* Optimize for simple constant 0 *)
    (match e with
     | Ast.Int 0 ->
       let all_instrs = [ Li (A0, 0) ] @ gen_epilogue_instrs frame_size in
       List.map (fun i -> Instruction i) all_instrs
     | _ ->
       let e_reg, e_instrs = gen_expr ctx e in
       let all_instrs = e_instrs @ [ Mv (A0, e_reg) ] @ gen_epilogue_instrs frame_size in
       List.map (fun i -> Instruction i) all_instrs)
  | Ast.Return None -> List.map (fun i -> Instruction i) (gen_epilogue_instrs frame_size)
  | Ast.If (cond, then_stmt, else_stmt) ->
    let cond_reg, cond_instrs = gen_expr ctx cond in
    let else_label = new_label ctx "else" in
    let end_label = new_label ctx "endif" in
    let then_items = gen_stmt ctx frame_size then_stmt in
    let else_items =
      match else_stmt with
      | Some s -> gen_stmt ctx frame_size s
      | None -> []
    in
    List.map (fun i -> Instruction i) cond_instrs
    @ [ Instruction (Beq (cond_reg, Zero, else_label)) ]
    @ then_items
    @ [ Instruction (J end_label); Label else_label ]
    @ else_items
    @ [ Label end_label ]
  | Ast.While (cond, body) ->
    let loop_label = new_label ctx "loop" in
    let end_label = new_label ctx "endloop" in
    ctx.break_labels <- end_label :: ctx.break_labels;
    ctx.continue_labels <- loop_label :: ctx.continue_labels;
    let cond_reg, cond_instrs = gen_expr ctx cond in
    let body_items = gen_stmt ctx frame_size body in
    ctx.break_labels <- List.tl ctx.break_labels;
    ctx.continue_labels <- List.tl ctx.continue_labels;
    [ Label loop_label ]
    @ List.map (fun i -> Instruction i) cond_instrs
    @ [ Instruction (Beq (cond_reg, Zero, end_label)) ]
    @ body_items
    @ [ Instruction (J loop_label); Label end_label ]
  | Ast.Break ->
    (match ctx.break_labels with
     | label :: _ -> [ Instruction (J label) ]
     | [] -> failwith "Break outside loop")
  | Ast.Continue ->
    (match ctx.continue_labels with
     | label :: _ -> [ Instruction (J label) ]
     | [] -> failwith "Continue outside loop")
  | Ast.Declare (name, e) ->
    let offset = add_local_var ctx name in
    let e_reg, e_instrs = gen_expr ctx e in
    let all_instrs = e_instrs @ [ Sw (e_reg, offset, Fp) ] in
    List.map (fun i -> Instruction i) all_instrs
  | Ast.Assign (name, e) ->
    let offset = get_var_offset ctx name in
    let e_reg, e_instrs = gen_expr ctx e in
    let all_instrs = e_instrs @ [ Sw (e_reg, offset, Fp) ] in
    List.map (fun i -> Instruction i) all_instrs
;;

(* 计算函数所需的栈帧大小 *)
let calculate_frame_size (func_def : Ast.func_def) =
  (* Helper to count all declarations including nested blocks *)
  let rec count_all_decls_in_stmt stmt =
    match stmt with
    | Declare _ -> 1
    | Block stmts ->
      (* For nested blocks, all variables are live simultaneously *)
      List.fold_left (fun acc s -> acc + count_all_decls_in_stmt s) 0 stmts
    | If (_, s1, Some s2) -> count_all_decls_in_stmt s1 + count_all_decls_in_stmt s2
    | If (_, s1, None) -> count_all_decls_in_stmt s1
    | While (_, s) -> count_all_decls_in_stmt s
    | _ -> 0
  in
  let num_locals = count_all_decls_in_stmt func_def.body in
  let num_params = List.length func_def.params in
  (* Calculate required space more efficiently:
     - 8 bytes for ra and fp
     - 4 bytes per parameter (all parameters need to be stored as local variables)
     - 4 bytes per local variable
  *)
  let base_space = 8 + (num_params * 4) + (num_locals * 4) in
  (* Add extra space for main function with complex calls *)
  let safe_space =
    if func_def.name = "main" && num_locals > 30
    then
      (* main function needs extra space for complex function calls *)
      base_space + 320 (* Add significant margin for main *)
    else base_space
  in
  (* 16-byte alignment *)
  let aligned_space = (safe_space + 15) / 16 * 16 in
  aligned_space
;;

(* 生成函数代码 *)
let gen_function symbol_table (func_def : Ast.func_def) : asm_item list =
  let ctx = create_context symbol_table in
  let frame_size = calculate_frame_size func_def in
  (* 函数序言 *)
  let prologue =
    [ Comment "prologue"
    ; Instruction (Addi (Sp, Sp, -frame_size))
    ; Instruction (Sw (Ra, frame_size - 4, Sp))
    ; Instruction (Sw (Fp, frame_size - 8, Sp))
    ; Instruction (Addi (Fp, Sp, frame_size))
    ]
  in
  (* 处理参数 *)
  ctx.stack_offset <- -8;
  (* Start after saved ra (-4) and fp (-8) *)
  (* Start allocating locals below saved registers *)
  let param_instrs =
    List.mapi
      (fun i param ->
         match param with
         | Ast.Param name ->
           let offset = add_local_var ctx name in
           if i < 8
           then (
             (* First 8 parameters come from registers A0-A7 *)
             let arg_reg =
               match i with
               | 0 -> A0
               | 1 -> A1
               | 2 -> A2
               | 3 -> A3
               | 4 -> A4
               | 5 -> A5
               | 6 -> A6
               | 7 -> A7
               | _ -> failwith "Impossible"
             in
             [ Instruction (Sw (arg_reg, offset, Fp)) ])
           else (
             (* Parameters beyond 8 are already on stack, copy them to local vars *)
             (* They are at fp + (i-8)*4 (caller's stack frame) *)
             let stack_param_offset = (i - 8) * 4 in
             let temp_reg = get_temp_reg ctx in
             [ Instruction (Lw (temp_reg, stack_param_offset, Fp))
             ; Instruction (Sw (temp_reg, offset, Fp))
             ]))
      func_def.params
    |> List.flatten
  in
  (* 函数体 *)
  let body_items = gen_stmt ctx frame_size func_def.body in
  (* 函数尾声（如果函数没有显式 return） *)
  let epilogue =
    let has_ret =
      List.exists
        (function
          | Instruction Ret -> true
          | _ -> false)
        body_items
    in
    if has_ret
    then []
    else List.map (fun i -> Instruction i) (gen_epilogue_instrs frame_size)
  in
  prologue @ param_instrs @ body_items @ epilogue
;;

(* 生成程序代码 *)
let gen_program symbol_table (program : Ast.comp_unit) =
  (* 重置全局标签计数器 *)
  global_label_counter := 0;
  (* 全局声明 *)
  let header =
    [ Directive ".text"; Directive ".globl main"; Comment "ToyC Compiler Generated Code" ]
  in
  (* 生成所有函数 *)
  let func_asm_items =
    List.map
      (fun func_def ->
         let items = gen_function symbol_table func_def in
         [ Label func_def.name; Comment ("Function: " ^ func_def.name) ] @ items)
      program
    |> List.flatten
  in
  header @ func_asm_items
;;

(* 主入口函数：编译程序并输出汇编文件 *)
let compile_to_riscv symbol_table program output_file =
  let asm_items = gen_program symbol_table program in
  Riscv.emit_asm_to_file output_file asm_items
;;
