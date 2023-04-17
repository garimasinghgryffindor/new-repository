%{
#include <stdio.h>
#include <string.h>
int count=0;
%}

%%
[a-zA-Z]+ {if(strlen(yytext) == 5)count++;}
. ;
%%
int yywrap() {
    return 1;
}

int main() {
    yylex();
    printf("Count:  %d\n",count);
    return 0;
}