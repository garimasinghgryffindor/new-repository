%{
#include <stdio.h>
#include <string.h>
%}
%%
[0-9]+ {int num = 0, i, square=0, sumOfDigitsOfSquare=0; 
        num = atoi(yytext); 
        square=num*num;
        while(square) {
            sumOfDigitsOfSquare+=square%10;
            square/=10;
        }
        if(num == sumOfDigitsOfSquare) {
            printf("Neon Number\n");
        } else {
            printf("Non a Neon Number\n");
        }
        }
[\n\t ]+ ;
. ;
%%
int yywrap() {
    return 1;
}
int main() {
    printf("start entering.....    ");
    yylex();
    return 0;
}