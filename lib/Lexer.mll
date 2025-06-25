{
(*
  OCaml ͷ���벿�֡�
  ������Ҫ�� Parser ģ�飬��������ʹ�����ж���� token ���� (�� IF, PLUS, ID ��)��
*)
open Parser
}

(* ����һЩ���õ�������ʽ���� *)
let digit = ['0'-'9']
let letter = ['a'-'z' 'A'-'Z']
let ident = (letter | '_') (letter | digit | '_')*

rule tokenize = parse
  (* �����˳�����Ҫ��ocamllex ��ѡ���һ��ƥ��Ĺ��� *)

  | [' ' '\t' '\r' '\n']  { tokenize lexbuf }     (* 1. ���Կհ��ַ� *)
  | "/*"                  { comment lexbuf }      (* 2. ƥ�����ע�� *)
  | "//" [^ '\n']* { tokenize lexbuf }     (* 3. ƥ�䵥��ע�� *)

  (* 4. �ؼ��� *)
  | "if"        { IF }
  | "else"      { ELSE }
  | "while"     { WHILE }
  | "break"     { BREAK }
  | "continue"  { CONTINUE }
  | "return"    { RETURN }
  | "int"       { INT }
  | "void"      { VOID }

  (* 5. ��ʶ��: ������ڹؼ���֮�� *)
  | ident as id { ID id }

  (* 6. �������� *)
  | digit+ as n { NUMBER (int_of_string n) }

  (* 7. ������ͷָ��� *)
  | "+"         { PLUS }
  | "-"         { MINUS }
  | "*"         { STAR }
  | "/"         { SLASH }
  | "%"         { MOD }
  | "=="        { EQ }
  | "!="        { NEQ }
  | "<"         { LT }
  | "<="        { LEQ }
  | ">"         { GT }
  | ">="        { GEQ }
  | "&&"        { AND }
  | "||"        { OR }
  | "!"         { NOT }
  | "="         { ASSIGN }
  | ";"         { SEMI }
  | ","         { COMMA }
  | "("         { LPAREN }
  | ")"         { RPAREN }
  | "{"         { LBRACE }
  | "}"         { RBRACE }

  (* 8. �ļ������� *)
  | eof         { EOF }

(* C ���Ķ���ע�ʹ��� *)
and comment = parse
  | "*/" { tokenize lexbuf }
  | _    { comment lexbuf }