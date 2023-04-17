%{
#include <stdio.h>
#include <string.h>
%}
%%
[a-z0-9_.]+@[a-z]+(".com"|".in") {printf("Valid email address\n");}
[\n\t ]+ ;
. ;
%%
int yywrap() {
    return 1;
}
int main() {
    printf("start entering...      ");
    yylex();

    return 0;
}