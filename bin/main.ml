open Js_of_ocaml

let parse_expr (n : Js.js_string Js.t) : Js.js_string Js.t =
  Json.output (Expr.parse (Js.to_string n))

let _ =
  Js.export_all
    (object%js
       method parse_expr = parse_expr
    end)
