(*
   ToyC 编译器代码生成模块
  将 AST 翻译为 RISC-V 32位汇编代码
*)

open Ast

(* 代码生成上下文 *)
type codegen_context =
  { mutable label_counter : int (* 标签计数器 *)
  ; mutable temp_counter : int (* 临时寄存器计数器 *)
  ; mutable stack_offset : int (* 当前栈偏移 *)
  ; mutable break_labels : string list (* break 跳转标签栈 *)
  ; mutable continue_labels : string list (* continue 跳转标签栈 *)
  ; mutable local_vars : (string * int) list (* 局部变量映射到栈偏移 *)
  }

(* 创建新的代码生成上下文 *)
let create_context _symbol_table =
  { label_counter = 0
  ; temp_counter = 0
  ; stack_offset = 0
  ; break_labels = []
  ; continue_labels = []
  ; local_vars = []
  }
;;

(* 生成新标签 *)
let new_label ctx prefix =
  let label = Printf.sprintf "%s%d" prefix ctx.label_counter in
  ctx.label_counter <- ctx.label_counter + 1;
  label
;;

(* 获取临时寄存器 *)
let get_temp_reg ctx =
  let reg =
    match ctx.temp_counter mod 8 with
    | 0 -> Riscv.T0
    | 1 -> Riscv.T1
    | 2 -> Riscv.T2
    | 3 -> Riscv.T3
    | 4 -> Riscv.T4
    | 5 -> Riscv.T5
    | 6 -> Riscv.T6
    | _ -> Riscv.A0
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

(* 生成表达式代码，返回结果寄存器和指令列表 *)
let rec gen_expr ctx (expr : Ast.expr) =
  match expr with
  | Ast.Int n ->
    let reg = get_temp_reg ctx in
    let instr = if n = 0 then [ Riscv.Mv (reg, Riscv.Zero) ] else [ Riscv.Li (reg, n) ] in
    reg, instr
  | Ast.Var name ->
    let reg = get_temp_reg ctx in
    let offset = get_var_offset ctx name in
    let instr = [ Riscv.Lw (reg, offset, Riscv.S0) ] in
    reg, instr
  | Ast.UnaryOp (op, e) ->
    let e_reg, e_instrs = gen_expr ctx e in
    let result_reg = get_temp_reg ctx in
    let instrs =
      match op with
      | Ast.Neg -> e_instrs @ [ Riscv.Sub (result_reg, Riscv.Zero, e_reg) ]
      | Ast.Not ->
        e_instrs
        @ [ Riscv.Slti (result_reg, e_reg, 1) (* 如果 e_reg < 1，则 result_reg = 1，否则为 0 *) ]
    in
    result_reg, instrs
  | Ast.BinaryOp (op, e1, e2) ->
    let e1_reg, e1_instrs = gen_expr ctx e1 in
    let e2_reg, e2_instrs = gen_expr ctx e2 in
    let result_reg = get_temp_reg ctx in
    let op_instrs =
      match op with
      | Ast.Add -> [ Riscv.Add (result_reg, e1_reg, e2_reg) ]
      | Ast.Sub -> [ Riscv.Sub (result_reg, e1_reg, e2_reg) ]
      | Ast.Mul -> [ Riscv.Mul (result_reg, e1_reg, e2_reg) ]
      | Ast.Div -> [ Riscv.Div (result_reg, e1_reg, e2_reg) ]
      | Ast.Mod -> [ Riscv.Rem (result_reg, e1_reg, e2_reg) ]
      | Ast.Eq ->
        [ Riscv.Sub (result_reg, e1_reg, e2_reg)
        ; Riscv.Slti (result_reg, result_reg, 1) (* 如果差值 < 1 且 >= 0，则相等 *)
        ]
      | Ast.Neq ->
        [ Riscv.Sub (result_reg, e1_reg, e2_reg)
        ; Riscv.Slti (Riscv.T0, result_reg, 1)
        ; (* T0 = (diff < 1) *)
          Riscv.Xori (result_reg, Riscv.T0, 1) (* result = !T0 *)
        ]
      | Ast.Lt -> [ Riscv.Slt (result_reg, e1_reg, e2_reg) ]
      | Ast.Leq ->
        [ Riscv.Slt (result_reg, e2_reg, e1_reg)
        ; (* result = (e2 < e1) *)
          Riscv.Xori (result_reg, result_reg, 1) (* result = !(e2 < e1) = (e1 <= e2) *)
        ]
      | Ast.Gt -> [ Riscv.Slt (result_reg, e2_reg, e1_reg) ]
      | Ast.Geq ->
        [ Riscv.Slt (result_reg, e1_reg, e2_reg)
        ; (* result = (e1 < e2) *)
          Riscv.Xori (result_reg, result_reg, 1) (* result = !(e1 < e2) = (e1 >= e2) *)
        ]
      | Ast.And ->
        let false_label = new_label ctx "and_false" in
        let end_label = new_label ctx "and_end" in
        e1_instrs
        @ e2_instrs
        @ [ Riscv.Beq (e1_reg, Riscv.Zero, false_label)
          ; (* 如果 e1 == 0，跳转到 false *)
            Riscv.Beq (e2_reg, Riscv.Zero, false_label)
          ; (* 如果 e2 == 0，跳转到 false *)
            Riscv.Li (result_reg, 1)
          ; (* 否则结果为 true *)
            Riscv.J end_label
          ; Riscv.Li (result_reg, 0) (* 结果为 false *)
          ]
      | Ast.Or ->
        let true_label = new_label ctx "or_true" in
        let end_label = new_label ctx "or_end" in
        e1_instrs
        @ e2_instrs
        @ [ Riscv.Bne (e1_reg, Riscv.Zero, true_label)
          ; (* 如果 e1 != 0，跳转到 true *)
            Riscv.Bne (e2_reg, Riscv.Zero, true_label)
          ; (* 如果 e2 != 0，跳转到 true *)
            Riscv.Li (result_reg, 0)
          ; (* 否则结果为 false *)
            Riscv.J end_label
          ; Riscv.Li (result_reg, 1) (* 结果为 true *)
          ]
    in
    let instrs = e1_instrs @ e2_instrs @ op_instrs in
    result_reg, instrs
  | Ast.Call (fname, args) ->
    (* 简化的函数调用实现 *)
    let result_reg = Riscv.A0 in
    let arg_instrs =
      List.mapi
        (fun i arg ->
           let arg_reg, arg_code = gen_expr ctx arg in
           let target_reg =
             match i with
             | 0 -> Riscv.A0
             | 1 -> Riscv.A1
             | 2 -> Riscv.A2
             | 3 -> Riscv.A3
             | 4 -> Riscv.A4
             | 5 -> Riscv.A5
             | 6 -> Riscv.A6
             | 7 -> Riscv.A7
             | _ -> failwith "Too many arguments"
           in
           arg_code @ [ Riscv.Mv (target_reg, arg_reg) ])
        args
      |> List.flatten
    in
    let call_instr = [ Riscv.Jal (Riscv.Ra, fname) ] in
    result_reg, arg_instrs @ call_instr
;;

(* 生成语句代码 *)
let rec gen_stmt ctx (stmt : Ast.stmt) =
  match stmt with
  | Ast.Empty -> []
  | Ast.Expr e ->
    let _, instrs = gen_expr ctx e in
    instrs
  | Ast.Block stmts ->
    let old_vars = ctx.local_vars in
    let old_offset = ctx.stack_offset in
    let instrs = List.map (gen_stmt ctx) stmts |> List.flatten in
    ctx.local_vars <- old_vars;
    ctx.stack_offset <- old_offset;
    instrs
  | Ast.Return (Some e) ->
    let e_reg, e_instrs = gen_expr ctx e in
    e_instrs
    @ [ Riscv.Mv (Riscv.A0, e_reg)
      ; (* 将返回值放入 A0 *)
        Riscv.Jalr (Riscv.Zero, Riscv.Ra, 0) (* 返回 *)
      ]
  | Ast.Return None -> [ Riscv.Jalr (Riscv.Zero, Riscv.Ra, 0) ]
  | Ast.If (cond, then_stmt, else_stmt) ->
    let cond_reg, cond_instrs = gen_expr ctx cond in
    let else_label = new_label ctx "else" in
    let end_label = new_label ctx "endif" in
    let then_instrs = gen_stmt ctx then_stmt in
    let else_instrs =
      match else_stmt with
      | Some s -> gen_stmt ctx s
      | None -> []
    in
    cond_instrs
    @ [ Riscv.Beq (cond_reg, Riscv.Zero, else_label) (* 如果条件为假，跳转到 else *) ]
    @ then_instrs
    @ [ Riscv.J end_label ]
    @ else_instrs
  | Ast.While (cond, body) ->
    let loop_label = new_label ctx "loop" in
    let end_label = new_label ctx "endloop" in
    ctx.break_labels <- end_label :: ctx.break_labels;
    ctx.continue_labels <- loop_label :: ctx.continue_labels;
    let cond_reg, cond_instrs = gen_expr ctx cond in
    let body_instrs = gen_stmt ctx body in
    ctx.break_labels <- List.tl ctx.break_labels;
    ctx.continue_labels <- List.tl ctx.continue_labels;
    []
    @ cond_instrs
    @ [ Riscv.Beq (cond_reg, Riscv.Zero, end_label) (* 如果条件为假，退出循环 *) ]
    @ body_instrs
    @ [ Riscv.J loop_label ]
  | Ast.Break ->
    (match ctx.break_labels with
     | label :: _ -> [ Riscv.J label ]
     | [] -> failwith "Break outside loop")
  | Ast.Continue ->
    (match ctx.continue_labels with
     | label :: _ -> [ Riscv.J label ]
     | [] -> failwith "Continue outside loop")
  | Ast.Declare (name, e) ->
    let offset = add_local_var ctx name in
    let e_reg, e_instrs = gen_expr ctx e in
    e_instrs @ [ Riscv.Sw (e_reg, offset, Riscv.S0) ]
  | Ast.Assign (name, e) ->
    let offset = get_var_offset ctx name in
    let e_reg, e_instrs = gen_expr ctx e in
    e_instrs @ [ Riscv.Sw (e_reg, offset, Riscv.S0) ]
;;

(* 生成函数代码 *)
let gen_function symbol_table (func_def : Ast.func_def) =
  let ctx = create_context symbol_table in
  (* 函数序言 *)
  let prologue =
    [ Riscv.Addi (Riscv.Sp, Riscv.Sp, -4)
    ; (* 为返回地址分配栈空间 *)
      Riscv.Sw (Riscv.Ra, 0, Riscv.Sp)
    ; (* 保存返回地址 *)
      Riscv.Addi (Riscv.Sp, Riscv.Sp, -4)
    ; (* 为帧指针分配栈空间 *)
      Riscv.Sw (Riscv.S0, 0, Riscv.Sp)
    ; (* 保存旧的帧指针 *)
      Riscv.Mv (Riscv.S0, Riscv.Sp) (* 设置新的帧指针 *)
    ]
  in
  (* 处理参数 *)
  let param_instrs =
    List.mapi
      (fun i param ->
         match param with
         | Ast.Param name ->
           let offset = add_local_var ctx name in
           let arg_reg =
             match i with
             | 0 -> Riscv.A0
             | 1 -> Riscv.A1
             | 2 -> Riscv.A2
             | 3 -> Riscv.A3
             | 4 -> Riscv.A4
             | 5 -> Riscv.A5
             | 6 -> Riscv.A6
             | 7 -> Riscv.A7
             | _ -> failwith "Too many parameters"
           in
           [ Riscv.Sw (arg_reg, offset, Riscv.S0) ])
      func_def.params
    |> List.flatten
  in
  (* 函数体 *)
  let body_instrs = gen_stmt ctx func_def.body in
  (* 函数尾声（如果函数没有显式 return） *)
  let epilogue =
    [ Riscv.Mv (Riscv.Sp, Riscv.S0)
    ; (* 恢复栈指针 *)
      Riscv.Lw (Riscv.S0, 0, Riscv.Sp)
    ; (* 恢复旧的帧指针 *)
      Riscv.Addi (Riscv.Sp, Riscv.Sp, 4)
    ; (* 释放帧指针栈空间 *)
      Riscv.Lw (Riscv.Ra, 0, Riscv.Sp)
    ; (* 恢复返回地址 *)
      Riscv.Addi (Riscv.Sp, Riscv.Sp, 4)
    ; (* 释放返回地址栈空间 *)
      Riscv.Jalr (Riscv.Zero, Riscv.Ra, 0) (* 返回 *)
    ]
  in
  prologue @ param_instrs @ body_instrs @ epilogue
;;

(* 生成程序代码 *)
let gen_program symbol_table (program : Ast.comp_unit) =
  (* 全局声明 *)
  let header =
    [ Riscv.Directive ".text"
    ; Riscv.Directive ".globl main"
    ; Riscv.Comment "ToyC Compiler Generated Code"
    ]
  in
  (* 生成所有函数 *)
  let func_asm_items =
    List.map
      (fun func_def ->
         let instrs = gen_function symbol_table func_def in
         [ Riscv.Label func_def.name; Riscv.Comment ("Function: " ^ func_def.name) ]
         @ List.map (fun i -> Riscv.Instruction i) instrs)
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
