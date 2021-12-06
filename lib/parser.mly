%token <int> INT
%token LPAREN
%token RPAREN
%token PLUS
%token MINUS
%token TIMES
%token DIVIDE
%token EOF

%left PLUS MINUS
%left TIMES DIVIDE

%start <Syntax.expr> program

%%

program:
  | e = expr; EOF { e }
  ;

expr:
  | i = INT
    { Int i }

  | LPAREN e = expr RPAREN
    { e }

  | l = expr PLUS r = expr
    { BinOp (Plus, l, r) }

  | l = expr MINUS r = expr
    { BinOp (Minus, l, r) }

  | l = expr TIMES r = expr
    { BinOp (Times, l, r) }

  | l = expr DIVIDE r = expr
    { BinOp (Divide, l, r) }
  ;
