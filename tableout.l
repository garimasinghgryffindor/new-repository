%{
#include <stdio.h>
#include <string.h>
%}
%%
[\n\t ]+ {fprintf(yyout, "%s is a delimiter\n",yytext);}
[0-9]+ {fprintf(yyout, "%s is an integer\n",yytext);}
[0-9]*"."[0-9]+ {fprintf(yyout, "%s is a decimal\n",yytext);}
[+=%\-*/] {fprintf(yyout, "%s is a arithmetic operator\n",yytext);}
[a-zA-Z]+ {fprintf(yyout, "%s is a word\n", yytext);}
. {fprintf(yyout, "%s is an unknown\n", yytext);}
%%
int yywrap(){
    return 1;
}
int main()
{
    yyin=fopen("tableout.txt","r");
    yyout=fopen("output.txt","w");
    yylex();
    return 0;

}