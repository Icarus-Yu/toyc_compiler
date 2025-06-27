open OUnit2

let make_func ?(params=[]) ?(ret_type=Toyc_compiler__Ast.Int) name body =
  { Toyc_compiler__Ast.ret_type = ret_type;
    name = name;
    params = params;
    body = body }

let make_var_decl name value =
  Toyc_compiler__Ast.Declare (name, Toyc_compiler__Ast.Int value)

let make_assign name value =
  Toyc_compiler__Ast.Assign (name, Toyc_compiler__Ast.Int value)

let make_return value =
  Toyc_compiler__Ast.Return (Some (Toyc_compiler__Ast.Int value))

let make_main_func body =
  make_func "main" ~params:[] ~ret_type:Toyc_compiler__Ast.Int body

let test_main_exists _ =
  let prog = [make_main_func (Toyc_compiler__Ast.Block [Toyc_compiler__Ast.Expr (Toyc_compiler__Ast.Int 1)])] in
  try
    Toyc_compiler.analyze_program prog;
    assert_bool "main should be accepted" true
  with
  | Toyc_compiler.Semantic_error msg ->
      print_endline ("main exists error: " ^ msg);
      assert_failure "main should be accepted"
  | e -> raise e

let test_main_missing _ =
  let prog = [make_func "foo" ~params:[] ~ret_type:Toyc_compiler__Ast.Int (Toyc_compiler__Ast.Block [Toyc_compiler__Ast.Expr (Toyc_compiler__Ast.Int 1)])] in
  try
    Toyc_compiler.analyze_program prog;
    assert_failure "should raise"
  with
  | Toyc_compiler.Semantic_error msg ->
      print_endline ("main missing error: " ^ msg);
      assert_equal "必须有一个名为 main、无参数且返回 int 的主函数" msg
  | e -> raise e

let test_var_decl_and_assign _ =
  let body = Toyc_compiler__Ast.Block [
    make_var_decl "a" 10;
    make_assign "a" 20;
    make_return 0
  ] in
  let prog = [make_main_func body] in
  try
    Toyc_compiler.analyze_program prog;
    assert_bool "var decl and assign should be accepted" true
  with
  | Toyc_compiler.Semantic_error msg ->
      print_endline ("var decl and assign error: " ^ msg);
      assert_failure "var decl and assign should be accepted"
  | e -> raise e

let test_undeclared_var _ =
  let body = Toyc_compiler__Ast.Block [
    make_assign "a" 10;
    make_return 0
  ] in
  let prog = [make_main_func body] in
  try
    Toyc_compiler.analyze_program prog;
    assert_failure "should raise"
  with
  | Toyc_compiler.Semantic_error msg ->
      print_endline ("undeclared var error: " ^ msg);
      assert_equal "未声明的变量：a" msg
  | e -> raise e

let test_type_mismatch _ =
  let body = Toyc_compiler__Ast.Block [
    make_var_decl "a" 10;
    Toyc_compiler__Ast.Assign ("a", Toyc_compiler__Ast.Call ("foo", []));
    make_return 0
  ] in
  let prog = [
    make_func "foo" ~params:[] ~ret_type:Toyc_compiler__Ast.Void (Toyc_compiler__Ast.Block []);
    make_main_func body
  ] in
  try
    Toyc_compiler.analyze_program prog;
    assert_failure "should raise"
  with
  | Toyc_compiler.Semantic_error msg ->
      print_endline ("type mismatch error: " ^ msg);
      assert_equal "赋值类型不匹配：a" msg
  | e -> raise e

let suite =
  "ToyC Semantic Analyzer" >::: [
    "main exists" >:: test_main_exists;
    "main missing" >:: test_main_missing;
    "var decl and assign" >:: test_var_decl_and_assign;
    "undeclared var" >:: test_undeclared_var;
    "type mismatch" >:: test_type_mismatch;
  ]

let () = run_test_tt_main suite
