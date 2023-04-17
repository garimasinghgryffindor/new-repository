%{
#include <stdio.h>
#include <string.h>
%}
%%
[^\t\n ]+ {fprintf(yyout, "%s",yytext);}
[\t\n ]+ {fprintf(yyout," ");}
. {;}
%%
int yywrap()
{
    return 1;
}
int main() 
{
    // input from file & output to file
    yyin = fopen("input1.txt", "r");
    yyout = fopen("output1.txt", "w");
    yylex();

    return 0;
}