type bin_op =
  | Plus
  | Minus
  | Times
  | Divide
  [@@deriving json]

type expr =
  | Int : int -> expr
  | BinOp : bin_op * expr * expr -> expr
  [@@deriving json]
