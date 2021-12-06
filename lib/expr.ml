module Syntax = Syntax

let parse (s : string) : Syntax.expr =
  let lexbuf = Lexing.from_string s in
  let ast = Parser.program Lexer.read lexbuf in
  ast
