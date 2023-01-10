%{
#include "y.tab.h"
extern int yylval;
%}
DIGIT [0-9]+
OP [+|-|*|/]
%%
{DIGIT} {yylval=atoi(yytext);return num;}
{OP} {return *yytext;}
[\n] {return NL;}
%%
int yywrap(){
return 1;
}
