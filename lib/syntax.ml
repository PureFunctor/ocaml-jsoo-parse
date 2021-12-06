type bin_op =
  | Plus
  | Times
  [@@deriving json]

type expr =
  | Int : int -> expr
  | Opr : expr * bin_op * expr -> expr
  [@@deriving json]
