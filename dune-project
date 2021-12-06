(lang dune 2.9)

(name jsoo_parse)

(using menhir 2.1)

(generate_opam_files true)

(package
 (name jsoo_parse)
 (maintainers "PureFunctor")
 (authors "PureFunctor")
 (homepage "https://github.com/PureFunctor/ocaml-jsoo-parse")
 (bug_reports "https://github.com/PureFunctor/ocaml-jsoo-parse/issues")
 (synopsis
  "An example of a menhir/ocamllex-based parser compiled to JavaScript using js_of_ocaml")
 (depends
  ("js_of_ocaml"
   (>= "3.11.0"))
  ("js_of_ocaml-ppx"
   (>= "3.11.0"))
  ("js_of_ocaml-ppx_deriving_json"
   (>= "3.11.0"))))
