%{
#include <stdio.h>    
int a=0,b=0,c=0,d=0;
%}
%%
[a] {a++;}
[b] {b++;}
[c] {c++;}
[d] {d++;}
. ;
%%
int yywrap(){
    return 1;
}

int main() {
    printf("start entering.......       ");
    yylex();
    printf("\nnumber of a's =>  %d\n",a);
    printf("\nnumber of b's =>  %d\n",b);
    printf("\nnumber of c's =>  %d\n",c);
    printf("\nnumber of d's =>  %d\n",d);

    return 0;
}