%{
#include <stdio.h>
#include <string.h>
%}
%%
[aeiouAEIOU0-9!@_-].[0-9a-zA-Z]+ {printf("Accepted\n");}
[a-zA-Z0-9]+ ;
[\n\t ]+ ;
. ;
%%
int yywrap()
{
    return 1;
}
int main()
{
    printf("start entering.....    ");
    yylex();
    return 0;
}
