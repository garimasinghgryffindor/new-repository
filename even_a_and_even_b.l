%{
#include <stdio.h>    
%}
%%
([a][a]|[b][b]|(([a][b]|[b][a])([a][a]|[b][b])*([a][b]|[b][a])))+ {printf("Accepted string %s\n ",yytext);}
[\t\n ] ;
. ;
%%
int yywrap(){
    return 1;
}

int main() {
    printf("start entering.......       ");
    yylex();

    return 0;
}