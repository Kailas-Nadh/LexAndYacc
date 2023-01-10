%{
#include<stdio.h>
#include<stdlib.h>
int yyval;
%}
%token num NL
%left '+''-'
%left '*''/'
%%
S:e NL {printf("%d\n",$$);}
e:e '+'e {$$=$1+$3;}
|e '-'e {$$=$1-$3;}
|e '*'e {$$=$1*$3;}
|e '/' e{$$=$1/$3;}
|e '^' e {int i,j=$1;for(i=1;i<$3;i++) j=j*$1;$$=j;}
|num1
num1:num1 num {$$=$1*10+$2;}
|num
%%
int main()
{
yyparse();
return 1;
}
yyerror(char *s)
{
printf("");
}


