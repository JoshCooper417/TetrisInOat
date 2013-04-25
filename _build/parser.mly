%{
open Ast;;
open Range;;
%}

/* Declare your tokens here. */
%token EOF
%token <Range.t * int32>  INT
%token <Range.t>          NULL
%token <Range.t>          TRUE
%token <Range.t>          FALSE
%token <Range.t * string> STRING
%token <Range.t * string> IDENT
%token <Range.t * string> CIDENT
%token <Range.t> TINT     /* int */
%token <Range.t> TBOOL    /* bool */
%token <Range.t> TUNIT    /* unit */
%token <Range.t> TSTRING  /* string */
%token <Range.t> CAST     /* cast */
%token <Range.t> IF       /* if */
%token <Range.t> IFNULL   /* if? */
%token <Range.t> ELSE     /* else */
%token <Range.t> WHILE    /* while */
%token <Range.t> FOR      /* for */
%token <Range.t> RETURN   /* return */
%token <Range.t> FAIL     /* fail */
%token <Range.t> THIS     /* this */
%token <Range.t> SUPER    /* super */
%token <Range.t> CLASS    /* class */
%token <Range.t> NEW      /* new */
%token <Range.t> FUN      /* fun */
%token <Range.t> EXTERN   /* extern */
%token <Range.t> SEMI     /* ; */
%token <Range.t> COMMA    /* , */
%token <Range.t> LBRACE   /* { */
%token <Range.t> RBRACE   /* } */
%token <Range.t> PLUS     /* + */
%token <Range.t> DASH     /* - */
%token <Range.t> STAR     /* * */
%token <Range.t> SLASH    /* / */
%token <Range.t> PERCENT  /* % */
%token <Range.t> GT       /* > */
%token <Range.t> GTEQ     /* >= */
%token <Range.t> LT       /* < */
%token <Range.t> LTEQ     /* <= */
%token <Range.t> EQEQ     /* == */
%token <Range.t> EQ       /* = */
%token <Range.t> BANG     /* ! */
%token <Range.t> BANGEQ   /* != */
%token <Range.t> BAR      /* | */
%token <Range.t> AMPER    /* & */
%token <Range.t> IOR      /* [|] */
%token <Range.t> IAND     /* [&] */
%token <Range.t> LPAREN   /* ( */
%token <Range.t> RPAREN   /* ) */
%token <Range.t> LBRACKET /* [ */
%token <Range.t> RBRACKET /* ] */
%token <Range.t> TILDE    /* ~ */
%token <Range.t> LTLT     /* << */
%token <Range.t> GTGT     /* >> */
%token <Range.t> GTGTGT   /* >>> */
%token <Range.t> ARROW    /* -> */
%token <Range.t> EXTEND   /* <: */
%token <Range.t> DOT      /* . */
%token <Range.t> QUESTION /* ? */

/* ---------------------------------------------------------------------- */
%start toplevel
%type <Range.t Ast.prog> toplevel
%type <Range.t Ast.fdecl> fdecl 
%type <Range.t Ast.exp> exp
%type <Range.t Ast.block> block
%type <Range.t Ast.const> const
%type <Ast.typ> typ
%type <Range.t Ast.stmt> stmt
%%

toplevel:
  | prog EOF { $1 }

prog:
  | vdecl SEMI prog { Gvdecl($1)::$3 }
  | efdecl prog { Gefdecl($1)::$2 }
  | fdecl prog { Gfdecl($1)::$2 }
  | cdecl prog { Gcdecl($1)::$2 }
  | /* empty */ { [] }

cidEXT:
  | /* empty */  { None }
  | EXTEND CIDENT { Some (snd($2)) }

cinitlist:
  | THIS DOT IDENT EQ init SEMI cinitlist { ($3,$5)::$7 }
  | /* empty */ { [] }

ctor:
  | NEW LPAREN arglist RPAREN LPAREN explist RPAREN cinitlist LBRACE block RBRACE { ($3, $6, $8, $10) }

fields:
  | typid SEMI fields { $1::$3 }
  | /* empty */ { [] }

methods:
  | /* empty */ { [] }
  | fdecl methods { $1::$2 }

cdecl:
  | CLASS CIDENT cidEXT LBRACE fields ctor methods RBRACE SEMI { (snd($2), $3, $5, $6, $7) }

typid:
  | typ IDENT { ($1, $2) }

arglist:
  | /* empty */ { [] }
  | argplus { $1 }

argplus:
  | typ IDENT   { [($1, $2)] }
  | typ IDENT COMMA argplus { ($1, $2)::$4 }

efdecl:
  | typ IDENT LPAREN arglist RPAREN EXTERN { (Some $1, $2, $4) }
  | TUNIT IDENT LPAREN arglist RPAREN EXTERN { (None, $2, $4) }

fdecl:
  | typ IDENT LPAREN arglist RPAREN LBRACE block RETURN expOPT SEMI RBRACE { (Some $1, $2, $4, $7, $9) }
  | TUNIT IDENT LPAREN arglist RPAREN LBRACE block RETURN expOPT SEMI RBRACE { (None, $2, $4, $7, $9) }

block:
  | vdecls stmts { ($1, $2) }

vdecls:
  | vdecl SEMI vdecls { $1::$3 }
  | /* empty */ { [] }

init:
  | exp { Iexp($1) }
  | LBRACE initlist RBRACE { Iarray(mk_parse_range $1 $3, $2) }

initlist:
  | /* empty */ { [] }
  | initplus { $1 }

initplus:
  | init   { [$1] }
  | init COMMA initplus { $1::$3 }

vdecl:
  | typ IDENT EQ init { {v_ty=$1; v_id=$2; v_init=$4 } }

typ:
  | TINT  { TInt }
  | TBOOL { TBool }
  | reference { TRef $1 }
  | reference QUESTION { TNullable $1 }

reference:
  | TSTRING { RString }
  | CIDENT { RClass (snd($1)) } 
  | typ LBRACKET RBRACKET { RArray ($1) }

/* int x = 3, int y = 4, int z = 5 */
vdecllist:
  | /* empty */ { [] }
  | vdeclplus { $1 }

vdeclplus:
  | vdecl  { [$1] }
  | vdecl COMMA vdeclplus { $1::$3 }

stmts:
  | stmt stmts { $1::$2 }
  | /* empty */  { [] }

const:
  | NULL { Cnull ($1) }
  | TRUE { Cbool ($1, true) }
  | FALSE { Cbool ($1, false) }
  | INT { Cint (fst($1), snd($1)) }
  | STRING { Cstring (fst($1), snd($1)) }

exp:
  | E2 { $1 }

expOPT:
  | /* empty */  { None }
  | exp          { Some $1 }

explist:
  | /* empty */ { [] }
  | expplus { $1 }

expplus:
  | exp   { [$1] }
  | exp COMMA expplus { $1::$3 }

E2:
  | E2 IOR E3 { Binop (IOr $2, $1, $3) }
  | E3 { $1 }

E3:
  | E3 IAND E4 { Binop (IAnd $2, $1, $3) }
  | E4 { $1 }

E4:
  | E4 BAR E5 { Binop (Or $2, $1, $3) }
  | E5 { $1 }

E5:
  | E5 AMPER E6 { Binop (And $2, $1, $3) }
  | E6 { $1 }

E6:
  | E6 EQEQ E7 { Binop (Eq $2, $1, $3) }
  | E6 BANGEQ E7 { Binop (Neq $2, $1, $3) }
  | E7 { $1 }

E7:
  | E7 LT E8 { Binop (Lt $2, $1, $3) }
  | E7 LTEQ E8 { Binop (Lte $2, $1, $3) }
  | E7 GT E8 { Binop (Gt $2, $1, $3) }
  | E7 GTEQ E8 { Binop (Gte $2, $1, $3) }
  | E8 { $1 }

E8:
  | E8 LTLT E9 { Binop (Shl $2, $1, $3) }
  | E8 GTGTGT E9 { Binop (Shr $2, $1, $3) }
  | E8 GTGT E9 { Binop (Sar $2, $1, $3) }
  | E9 { $1 }

E9:
  | E9 PLUS E10 { Binop (Plus $2, $1, $3) }
  | E9 DASH E10 { Binop (Minus $2, $1, $3) }
  | E10 { $1 }

E10:
  | E10 STAR E11 { Binop (Times $2, $1, $3) }
  | E11 { $1 }

E11:
  | DASH E11 { Unop (Neg $1, $2) }
  | BANG E11 { Unop (Lognot $1, $2) }
  | TILDE E11 { Unop (Not $1, $2) }
  | E12 { $1 }

E12:
  | const { Const $1 }
  | THIS  { This $1 }
  | NEW typ LBRACKET exp RBRACKET LPAREN FUN IDENT ARROW exp RPAREN
      { New ($2, $4, $8, $10) }
  | NEW CIDENT LPAREN explist RPAREN { Ctor ($2, $4) }
  | lhs_or_call { LhsOrCall $1}
  | LPAREN exp RPAREN { $2 }

lhs:
  | IDENT { Var $1 }
  | path { Path $1 }
  | lhs_or_call LBRACKET exp RBRACKET { Index ($1, $3) }
 
lhs_or_call:
  | lhs { Lhs $1 }
  | call { Call $1 }

call:
  | IDENT LPAREN explist RPAREN { Func ($1, $3)}
  | SUPER DOT IDENT LPAREN explist RPAREN { SuperMethod ($3, $5) }
  | path LPAREN explist RPAREN { PathMethod ($1, $3) }

path:
  | THIS DOT IDENT { ThisId $3 }
  | lhs_or_call DOT IDENT { PathId ($1, $3) }

stmt: 
  | M  { $1 }
  | U  { $1 }

U: 
  | IF LPAREN exp RPAREN stmt     { If ($3, $5, None) }
  | IF LPAREN exp RPAREN M ELSE U { If ($3, $5, Some $7) }
  | IFNULL LPAREN reference IDENT EQ exp RPAREN stmt     
     { IfNull ($3, $4, $6, $8, None) }
  | IFNULL LPAREN reference IDENT EQ exp RPAREN M ELSE U 
     { IfNull ($3, $4, $6, $8, Some $10) }
  | CAST LPAREN CIDENT IDENT EQ exp RPAREN stmt 
     { Cast (snd($3), $4, $6, $8, None) }
  | CAST LPAREN CIDENT IDENT EQ exp RPAREN M ELSE U 
     { Cast (snd($3), $4, $6, $8, Some $10) }
  | WHILE LPAREN exp RPAREN U  { While ($3, $5) } 
  | FOR LPAREN vdecllist SEMI expOPT SEMI stmtOPT RPAREN U { For ($3, $5, $7, $9) }  

/* Matched if-then-else */
M:
  | lhs EQ exp SEMI  { Assign ($1, $3) }
  | call SEMI { Scall $1 }
  | FAIL LPAREN exp RPAREN SEMI { Fail ($3) }
  | IF LPAREN exp RPAREN M ELSE M { If ($3, $5, Some $7) }
  | IFNULL LPAREN reference IDENT EQ exp RPAREN M ELSE M
     { IfNull ($3, $4, $6, $8, Some $10) }
  | CAST LPAREN CIDENT IDENT EQ exp RPAREN M ELSE M 
     { Cast (snd($3), $4, $6, $8, Some $10) }
  | WHILE LPAREN exp RPAREN M  { While ($3, $5) } 
  | FOR LPAREN vdecllist SEMI expOPT SEMI stmtOPT RPAREN M { For($3, $5, $7, $9) }  
  | LBRACE block RBRACE { Block ($2) }

stmtOPT:
  | /* empty */  { None }
  | stmt         { Some $1 }



