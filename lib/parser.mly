%token <int> INT
%token EOF
%token PLUS
%token TIMES

%left PLUS
%left TIMES

%start <Syntax.expr> program

%%

program:
  | e = expr; EOF { e }
  ;

expr:
  | i = INT { Int i }
  | l = expr; PLUS; r = expr { Opr (l, Plus, r) }
  | l = expr; TIMES; r = expr { Opr (l, Times, r) }
  ;
