open Printf

(* 手动创建一个简单的AST来测试代码生成 *)
let simple_program =
  let open Toyc_compiler__.Ast in
  [ { ret_type = Int
    ; name = "main"
    ; params = []
    ; body =
        Block
          [ Declare ("x", Int 42)
          ; Declare ("y", Int 8)
          ; Declare ("sum", BinaryOp (Add, Var "x", Var "y"))
          ; Return (Some (Var "sum"))
          ]
    }
  ]
;;

let () =
  printf "=== ToyC 代码生成器演示 ===\n\n";
  (* 创建符号表 *)
  let symtab = Toyc_compiler__.Symbol.enter_scope [] in
  (* 调用代码生成器 *)
  let asm_items = Toyc_compiler__.Codegen.gen_program symtab simple_program in
  (* 输出生成的汇编代码 *)
  printf "生成的 RISC-V 汇编代码：\n";
  printf "=======================\n";
  List.iter
    (fun item -> printf "%s\n" (Toyc_compiler__.Riscv.asm_item_to_string item))
    asm_items;
  printf "\n=======================\n";
  printf "代码生成完成！\n"
;;
