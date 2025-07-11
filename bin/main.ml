let usage_msg = "toyc <file.tc> [-o output.s]"
let input_filename = ref ""
let output_filename = ref ""
let set_input_file filename = input_filename := filename
let set_output_file filename = output_filename := filename
let spec_list = [ "-o", Arg.String set_output_file, " 指定输出汇编文件名" ]

let () =
  Arg.parse spec_list set_input_file usage_msg;
  if !input_filename = ""
  then (
    Printf.eprintf "错误：请指定输入文件\n";
    Printf.eprintf "用法：%s\n" usage_msg;
    exit 1);
  (* 如果没有指定输出文件名，则基于输入文件名生成 *)
  if !output_filename = ""
  then output_filename := Filename.remove_extension !input_filename ^ ".s";
  try
    (* 1. 读取源文件 *)
    let ic = open_in !input_filename in
    let source = really_input_string ic (in_channel_length ic) in
    close_in ic;
    (* 2. 词法分析 *)
    let lexbuf = Lexing.from_string source in
    (* 3. 语法分析 *)
    let ast = Toyc_compiler__.Parser.program Toyc_compiler__.Lexer.tokenize lexbuf in
    Printf.printf "语法分析完成，共解析了 %d 个函数\n" (List.length ast);
    (* 4. 语义分析 *)
    let symtab = Toyc_compiler__.Symbol.enter_scope [] in
    let symtab =
      List.fold_left
        (fun s f ->
           Toyc_compiler__.Symbol.add_symbol
             f.Toyc_compiler__.Ast.name
             (Toyc_compiler__.Symbol.Func
                { ret_type = f.ret_type
                ; params =
                    List.map
                      (function
                        | Toyc_compiler__.Ast.Param name -> Toyc_compiler__.Ast.Int, name)
                      f.params
                ; declared = true
                })
             s)
        symtab
        ast
    in
    Toyc_compiler.analyze_program ast;
    Printf.printf "语义分析完成\n";
    (* 5. 代码生成 *)
    Toyc_compiler__.Codegen.compile_to_riscv symtab ast !output_filename;
    Printf.printf "代码生成完成，输出文件：%s\n" !output_filename
  with
  | Sys_error msg ->
    Printf.eprintf "系统错误：%s\n" msg;
    exit 1
  | Toyc_compiler__.Parser.Error ->
    Printf.eprintf "语法分析错误\n";
    exit 1
  | Toyc_compiler.Semantic_error msg ->
    Printf.eprintf "语义错误：%s\n" msg;
    exit 1
  | Toyc_compiler.NotAllPathsReturn msg ->
    Printf.eprintf "控制流错误：%s\n" msg;
    exit 1
  | Failure msg ->
    Printf.eprintf "代码生成错误：%s\n" msg;
    exit 1
;;
