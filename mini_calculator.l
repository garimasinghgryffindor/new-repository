%{
#include <stdio.h>
int op=0,i;
float a,b;
void digi();
%}
%%
[0-9]*"."[0-9]+|[0-9]+ {digi();}
"+" {op=1;}
"-" {op=2;}
"*" {op=3;}
"/" {op=4;}
"^" {op=5;}
[\n] {printf("Result:     %f\n",a);} 
%%
void digi() {
    if(op == 0) {
        a = atof(yytext);
    }
    else {
        b = atof(yytext);

        switch(op) {
            case 1:a=a+b;
                break;
            case 2:a=a-b;
                break;
            case 3:a=a*b;
                break;
            case 4:a=a/b;
                break;
            case 5: for(i=a ; b>1 ; b--) {
                        a=a*i;
                    }
                break;
        }

        op = 0;
    }
}
int yywrap() {
    return 1;
}
int main() {
    printf("start entering.........    ");
    yylex();
    return 0;
}