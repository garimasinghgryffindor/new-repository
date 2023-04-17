%{
#include <stdio.h>
#include <string.h>
%}
%%
"<"[^<>]+">" {printf("%s  is a tag\n",yytext);}
. {;}
%%
int yywrap()
{
    return 1;
}
int main()
{
    // from runtime input
    printf("start entering:  ");
    yylex();

    return 0;
}