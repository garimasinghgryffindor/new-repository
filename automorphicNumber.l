%{
#include <stdio.h>
#include <string.h>
%}
%%
[0-9]+ {int num = 0, i, square=0, flag = 0; 
        for(i=0 ; i<strlen(yytext); i++) {
            num = num*10+(yytext[i]-'0');
        } 
        square=num*num;
        while(num) {
            if(num%10 != square%10) {
                printf("Not an automorphic Number\n");
                flag = 1;
                break;
            }
            num/=10;
            square/=10;
        }
        if(flag == 0) {
            printf("an Automorphic Number\n");
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