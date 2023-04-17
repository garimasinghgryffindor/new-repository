%{
#include <stdio.h>
%}
%%
[0-9]+ {int n = strlen(yytext), i, flag = 1;;
        for(i=0 ; i<n/2 ; i++) {
            if(yytext[i] != yytext[n-1-i]) {
                printf("The entered number is not a palindrome\n");
                flag = 0;
                break;
            }
        }
        if(flag == 1) {
            printf("The entered number is a palindrome\n");
        }}
[\n\t ]+ ;
. ;
%%

int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}