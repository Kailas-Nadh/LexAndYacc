%{
int vowel=0,consonant =0;
%}
%%
[aeiouAEIOU] {vowel++;}
[a-zA-Z] {consonant++;}
%%
int yywrap(){}
int main()
{
printf("Enter the string \n");
yylex();
printf("Number of vowels are: %d\n", vowel);
printf("Number of consonants are: %d\n", consonant);
return 0;
}
