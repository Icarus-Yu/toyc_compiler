/* 1. OCaml 头代码: 定义 token 的数据类型 */
%{
  (*
    这里可以放任意 OCaml 代码。
    目前为空，但未来可以用来放辅助函数。
  *)
  open Ast
%}

/* 2. 定义 Token */

/* 文件结束符 */
%token EOF

/* 关键字 */
%token IF ELSE WHILE BREAK CONTINUE RETURN
%token INT VOID

/* 标识符和字面量 */
%token <string> ID
%token <int> NUMBER

/* 运算符 */
%token PLUS MINUS STAR SLASH MOD
%token EQ NEQ LT LEQ GT GEQ
%token AND OR NOT

/* 括号和分隔符 */
%token LPAREN RPAREN LBRACE RBRACE
%token SEMI COMMA ASSIGN

/* 3. 定义优先级和结合性 (这些声明现在将真正起作用) */
%left OR
%left AND
%left EQ NEQ
%left LT LEQ GT GEQ
%left PLUS MINUS
%left STAR SLASH MOD
%right NOT UMINUS UPLUS

/* 解决悬空else问题：ELSE与最近的IF匹配 */
%nonassoc LOWER_THAN_ELSE
%nonassoc ELSE


/* 4. 定义开始符号 (未来语法分析的入口) */
%start <Ast.comp_unit> program

%%

/* 5. 语法规则 */

/*
  program: 编译单元，入口符号，对应一个或多个函数定义
*/
program:
  funcdefs EOF { $1 }
;

/*
  funcdefs: 一个或多个函数定义
*/
funcdefs:
  funcdefs funcdef { $1 @ [$2] }
| funcdef           { [$1] }
;

/*
  funcdef: ToyC 的函数定义
*/
funcdef:
  rettype id=ID LPAREN params_opt RPAREN body=block
    {
      let rec collect_locals stmt =
        match stmt with
        | Declare (id, e) -> [(id, e)]
        | Block stmts -> List.concat_map collect_locals stmts
        | If (_, s1, Some s2) -> collect_locals s1 @ collect_locals s2
        | If (_, s1, None) -> collect_locals s1
        | While (_, s) -> collect_locals s
        | _ -> []
      in
      let locals = collect_locals body in
      { ret_type = $1; name = id; params = $4; body = body; locals = locals }
    }
;

rettype:
  INT  { Int }
| VOID { Void }
;

params_opt:
  params { $1 }
|        { [] }
;

params:
  param                { [$1] }
| params COMMA param   { $1 @ [$3] }
;

param:
  INT id=ID { Param id }
;

/*
  block: 语句块，对应 AST 的 Block
*/
block:
  LBRACE stmts RBRACE { Block $2 }
;

stmts:
  stmts stmt { $1 @ [$2] }
|            { [] }
;

/*
  stmt: ToyC 所有语句类型
*/
stmt:
  block                { $1 }
| SEMI                 { Empty }
| expr SEMI            { Expr $1 }
| id=ID ASSIGN e=expr SEMI { Assign (id, e) }
| INT id=ID ASSIGN e=expr SEMI { Declare (id, e) }
| IF LPAREN cond=expr RPAREN s1=stmt ELSE s2=stmt { If (cond, s1, Some s2) }
| IF LPAREN cond=expr RPAREN s1=stmt %prec LOWER_THAN_ELSE { If (cond, s1, None) }
| WHILE LPAREN cond=expr RPAREN body=stmt         { While (cond, body) }
| BREAK SEMI                                      { Break }
| CONTINUE SEMI                                   { Continue }
| RETURN expr_opt SEMI                            { Return $2 }
;

expr_opt:
  expr { Some $1 }
|      { None }
;

/**********************************************************************
 * START: 这里是唯一的修改部分
 **********************************************************************/

/*
  统一的、递归的表达式规则。
  优先级和结合性由文件顶部的 %left, %right 等声明来处理。
*/
expr:
  /* 二元运算 */
  expr PLUS expr       { BinaryOp (Add, $1, $3) }
| expr MINUS expr      { BinaryOp (Sub, $1, $3) }
| expr STAR expr       { BinaryOp (Mul, $1, $3) }
| expr SLASH expr      { BinaryOp (Div, $1, $3) }
| expr MOD expr        { BinaryOp (Mod, $1, $3) }
| expr EQ expr         { BinaryOp (Eq, $1, $3) }
| expr NEQ expr        { BinaryOp (Neq, $1, $3) }
| expr LT expr         { BinaryOp (Lt, $1, $3) }
| expr LEQ expr        { BinaryOp (Leq, $1, $3) }
| expr GT expr         { BinaryOp (Gt, $1, $3) }
| expr GEQ expr        { BinaryOp (Geq, $1, $3) }
| expr AND expr        { BinaryOp (And, $1, $3) }
| expr OR expr         { BinaryOp (Or, $1, $3) }
| /* 一元运算 (使用 %prec 解决与二元减号的冲突) */
  MINUS expr %prec UMINUS { UnaryOp (Neg, $2) }
| PLUS expr %prec UPLUS   { UnaryOp (Pos, $2) }
| NOT expr                { UnaryOp (Not, $2) }
| /* 基本表达式 */
  primary                 { $1 }
;

/*
  primary: 包含所有最高优先级的表达式单元
*/
primary:
  ID                        { Var $1 }
| NUMBER                    { Int $1 }
| LPAREN expr RPAREN        { $2 }
| ID LPAREN args_opt RPAREN { Call ($1, $3) }
;

args_opt:
  args { $1 }
|      { [] }
;

args:
  expr                { [$1] }
| args COMMA expr     { $1 @ [$3] }
;
/**********************************************************************
 * END: 修改部分结束
 **********************************************************************/