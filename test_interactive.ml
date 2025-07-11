#require "toyc_compiler"

(* 创建一个简单的测试AST *)
let test_main_function =
  Toyc_compiler__.Ast.
    { ret_type = Int
    ; name = "main"
    ; params = []
    ; body =
        Block
          [ Declare ("x", Int 5)
          ; Declare ("y", Int 10)
          ; Declare ("z", BinaryOp (Add, Var "x", Var "y"))
          ; Return (Some (Var "z"))
          ]
    }
;;

let test_program = [ test_main_function ]

(* 创建空的符号表 *)
let symtab = Toyc_compiler__.Symbol.enter_scope []

(* 生成汇编代码 *)
let asm_items = Toyc_compiler__.Codegen.gen_program symtab test_program;;

(* 输出汇编代码 *)
Printf.printf "生成的RISC-V汇编代码：\n%s\n" (Toyc_compiler__.Riscv.emit_asm_to_string asm_items)
;;

(* 输出到文件 *)
Toyc_compiler__.Riscv.emit_asm_to_file "test_output.s" asm_items;;
Printf.printf "汇编代码已输出到 test_output.s\n"
