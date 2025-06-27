val analyze_program : Ast.comp_unit -> unit
exception Semantic_error of string
exception NotAllPathsReturn of string 