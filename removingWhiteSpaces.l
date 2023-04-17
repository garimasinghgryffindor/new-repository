%{
#include <stdio.h>
#include <string.h>
%}
%%
[^\t\n ]+ {printf("%s",yytext);}
[\t\n ]+ {printf(" ");}
. {;}
%%
int yywrap()
{
    return 1;
}
int main() 
{
    // from run time inputs
    printf("start entering:     ");
    yylex();

    return 0;
}