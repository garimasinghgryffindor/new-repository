%{
#include <stdio.h>
#include <string.h>
int x = 0;
FILE *fout;
%}
%%
"//"(.*)\n {;}
"/*"(.*\n)*.*"*/" {;}
. {fprintf(fout,"%s",yytext);}
%%
int yywrap()
{
return 1;
}
int main()
{
printf("Enter text:  ");
fout = fopen("output1.txt","w");
yylex();
return 0;
}