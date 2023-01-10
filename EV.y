%{
	#include<stdio.h>
%}

%token NUMBER ID

%left '+''-'
%left '*''/'

%%

	expr:expr'+'expr
	|expr'-'expr
	|expr'*'expr
	|expr'/'expr
	|'-'NUMBER
	|'-'ID
	|'('expr')'
	|NUMBER
	|ID
	;
%%

int main(){
	printf("Enter the expression: ");
	yyparse();
	printf("\nExpression is valid\n");
	exit(0);
}

int yyerror(){
	printf("\nExpression is invalid\n");
	exit(0);
}
