%{
#include <stdio.h>
#include <string.h>
%}
%%
"auto"|"double"|"int"|"struct"|"break"|"else"|"long"|"switch"|"case"|"enum"|"register"|"typedef"|"char"|"extern"|"return"|"union"|"continue"|"for"|"signed"|"void"|"do"|"if"|"static"|"while"|"default"|"goto"|"sizeof"|"volatile"|"const"|"float"|"short"|"unsigned" {printf("%s  invalid\n",yytext);}
[_A-Za-z].[_a-zA-Z0-9]* {printf("%s  valid\n",yytext);}
[\n\t ]+ {;}
[^\n\t]* {printf("%s  invalid\n",yytext);}
%%
int yywrap()
{
return 1;
}

int main()
{
printf("start entering :   ");
yylex();

return 0;
}