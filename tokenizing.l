%{
#include <stdio.h>
#include <string.h>
%}
%%
"auto"|"double"|"int"|"struct"|"break"|"else"|"long"|"switch"|"case"|"enum"|"register"|"typedef"|"char"|"extern"|"return"|"union"|"continue"|"for"|"signed"|"void"|"do"|"if"|"static"|"while"|"default"|"goto"|"sizeof"|"volatile"|"const"|"float"|"short"|"unsigned" {fprintf(yyout,"%s  is a keyword\n",yytext);}
[_A-Za-z][_a-zA-Z0-9]* {fprintf(yyout, "%s is an identifier\n",yytext);}
[\n\t ]+ {fprintf(yyout, "%s is a delimiter\n",yytext);}
[+=\-*/] {fprintf(yyout, "%s is a arithmetic operator\n",yytext);}
[;] {fprintf(yyout, "%s is a terminator\n", yytext);}
[0-9]*"."[0-9]+ {fprintf(yyout, "%s is a decimal\n",yytext);}
[0-9]+ {fprintf(yyout, "%s is an integer\n",yytext);}
["][^\n]["] {fprintf(yyout, "%s is a string\n", yytext);}
%%
int yywrap()
{
    return 1;
}
int main()
{
    yyout = fopen("output3.txt", "w");
    printf("start entering:    ");
    yylex();
    return 0;
}