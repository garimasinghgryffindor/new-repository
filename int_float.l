%{
#include <stdio.h>
int integers[100];
float floats[100];
int int_count=0, float_count=0;
%}
%%
[0-9]*"."[0-9]+ {float x = atof(yytext); floats[float_count++]=x;}
[0-9]+ {int x = atoi(yytext); integers[int_count++]=x;}
%%
int yywrap()
{
return 1;
}

int main()
{
printf("start entering the integers and floating point numbers:   ");
yylex();
int i;
printf("Integers:   ");
for(i=0 ; i<int_count ; i++)
{
printf("%d     ",integers[i]);
}
printf("\n");
printf("Floats:   ");
for(i=0 ; i<float_count ; i++)
{
printf("%f     ",floats[i]);
}
printf("\n");

return 0;
}