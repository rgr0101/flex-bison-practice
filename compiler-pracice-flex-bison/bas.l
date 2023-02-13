%{
void yyerror(char *s);
#include "y.tab.h"
%}

%option nodefault

%%

"if"            return IF;
"else"          return ELSE;
")"             return PAREND;
"("             return PARENI;
";"             return PCOMA;
"{"             return LLAVEI;
"}"             return LLAVED;
">"             return MAYOR;
"<"             return MENOR;
">="            return MAYOREQ;
"<="            return MENOREQ;
"="             return IGUAL;
"for"           return FOR;
"do"            return DO;
"while"         return WHILE;
"function"      return FUNCTION;
"switch"        return SWITCH;
"case"          return CASE;
"break"         return BREAK;
":"             return DOSPUNTOS;

[a-zA-Z_][a-zA-Z_0-9]* {return ID;}
[0-9]+          {return NUM;}
[ \t ] ;
\n              return 0;
.               return yytext[0];

%%