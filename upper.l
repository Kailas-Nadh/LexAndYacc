%{
#include<stdio.h>
%}
%%
abc printf("%c%c%c",yytext[0]-('a'-'A'),yytext[1]-('a'-'A'),yytext[2]-('a'-'A'));
%%
int main()
{
printf("enter a string:\n");
yylex();
return 0;
}
int yywrap( )
{
return 1;
}
