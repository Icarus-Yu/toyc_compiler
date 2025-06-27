
/* 1. OCaml 头代码: 定义 token 的数据类型 */
%{
  (*
    这里可以放任意 OCaml 代码。
    目前为空，但未来可以用来放辅助函数。
  *)
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

/* 3. 定义优先级和结合性 (为未来的语法分析做准备) */
%right ASSIGN
%left OR
%left AND
%left EQ NEQ
%left LT LEQ GT GEQ
%left PLUS MINUS
%left STAR SLASH MOD
%right NOT

/* 4. 定义开始符号 (未来语法分析的入口) */
%start <Ast.comp_unit> comp_unit

%%

/* 5. 语法规则 (现在可以留空，下一步再填充) */