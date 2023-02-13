%{
        #include <stdio.h>
        #include <stdlib.h>
        #include <math.h>
        #include <string.h>
        #include "lex.yy.c"
%}

%token ID
%token IF 
%token ELSE
%token NUM
%token PAREND
%token PARENI
%token PCOMA
%token LLAVEI
%token LLAVED
%token MAYOR
%token MENOR
%token MAYOREQ
%token MENOREQ
%token IGUAL
%token FOR
%token WHILE
%token DO
%token FUNCTION
%token SWITCH
%token CASE
%token BREAK
%token DOSPUNTOS
%right '='
%left '+' '-'
%left '*' '/'
%left UMINUS

%%

start : sentencia
    ;

sentencia : ifcond
    | asigna
    | ciclowhile
    | dowhile
    | ciclofor
    | condswitch
    | functiondecla
    | functioncall
    ;
    
functioncall : nombrefunc PARENI parametro PAREND PCOMA
    ;

functiondecla : FUNCTION nombrefunc PARENI parametro PAREND LLAVEI sentencia LLAVED
    ;

nombrefunc : vari ;

parametro : NUM
    | ID
    ;

condswitch : SWITCH PARENI vari PAREND DOSPUNTOS casos
    ;

casos : CASE expr DOSPUNTOS sentencia BREAK PCOMA
    ;

ciclofor : FOR PARENI asigna condi PCOMA asigna PAREND LLAVEI sentencia LLAVED
    ;

dowhile : DO LLAVEI sentencia LLAVED WHILE PARENI condi PAREND PCOMA
    ;

ciclowhile : WHILE PARENI condi PAREND LLAVEI sentencia LLAVED
    ;

ifcond : IF PARENI condi PAREND LLAVEI sentencia LLAVED
    | IF PARENI condi PAREND LLAVEI sentencia LLAVED ELSE LLAVEI sentencia LLAVED
    ;

condi : expr MENOR expr
    | expr MAYOR expr
    | expr MAYOREQ expr
    | expr MENOREQ expr
    ;

asigna : vari IGUAL expr
    | vari IGUAL expr PCOMA
    | expr
    ;

expr : expr '+' expr
    | expr '-' expr
    | term
    ;

term : term '*' factor
    | term '/' factor
    | factor
    ;
 

factor : '-' factor 
    | '(' expr ')'
    | NUM
    | vari
    ;


vari : ID
    ;

%%

void main() {
    printf("Ingresa: ");
    yyparse();
    printf("Válida");
}

int yywrap() {
    exit(0);
}

void yyerror(char *s) {
    printf("\n %s", s);
    exit(0);
}

