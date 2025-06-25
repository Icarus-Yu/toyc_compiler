
/* 1. OCaml ͷ����: ���� token ���������� */
%{
  (*
    ������Է����� OCaml ���롣
    ĿǰΪ�գ���δ�����������Ÿ���������
  *)
%}

/* 2. ���� Token */

/* �ļ������� */
%token EOF

/* �ؼ��� */
%token IF ELSE WHILE BREAK CONTINUE RETURN
%token INT VOID

/* ��ʶ���������� */
%token <string> ID
%token <int> NUMBER

/* ����� */
%token PLUS MINUS STAR SLASH MOD
%token EQ NEQ LT LEQ GT GEQ
%token AND OR NOT

/* ���źͷָ��� */
%token LPAREN RPAREN LBRACE RBRACE
%token SEMI COMMA ASSIGN

/* 3. �������ȼ��ͽ���� (Ϊδ�����﷨������׼��) */
%right ASSIGN
%left OR
%left AND
%left EQ NEQ
%left LT LEQ GT GEQ
%left PLUS MINUS
%left STAR SLASH MOD
%right NOT

/* 4. ���忪ʼ���� (δ���﷨���������) */
%start <Ast.comp_unit> comp_unit

%%

/* 5. �﷨���� (���ڿ������գ���һ�������) */