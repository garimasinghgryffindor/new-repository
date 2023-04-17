%{
#include <stdio.h>
#include <string.h>
%}
%%
"<"[^<>]+">" {fprintf(yyout,"%s  is a tag\n",yytext);}
. {;}
%%
int yywrap()
{
    return 1;
}
int main()
{
    // input from file & output to file
    yyin = fopen("inputFile.txt","r");
    yyout = fopen("outputFile.txt","w");
    yylex();

    return 0;
}