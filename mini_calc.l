%{
#include <stdio.h>
int a,b;
float res;
%}
%%
"+" {res=a+b;}
"-" {res=a-b;}
"*" {res=a*b;}
"/" {res=a/b;}
%%
int yywrap(void)
{ return 1;}
int main()
{
     printf("Enter two numbers:  ");
     scanf("%d%d",&a,&b);
     printf("Enter the operand:   ");
     yylex();
     printf("\nresult:  %f\n",res);
     return 0;
}