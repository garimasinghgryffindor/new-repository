%{
#include <stdio.h>
#include <string.h>
int cc=0,wc=0,tc=0,sc=0,lc=0;
%}
%%
[\n] {lc++;}
[\t] {tc++;}
" " {sc++;}
[^\n\t' '0-9] {cc++;}
[^\n\t' '0-9]+.[' '] {wc++; cc+=strlen(yytext)-1; sc++;}
[^\n\t' '0-9]+.[\n] {wc++; cc+=strlen(yytext)-1; lc++;}
[^\n\t' '0-9]+.[\t] {wc++; cc+=strlen(yytext)-1; tc++;}
[^\n\t' '0-9]+ {wc++; cc+=strlen(yytext);}
%%
int yywrap()
{
return 1;
}

int main()
{
printf("start entering :   ");
yylex();
printf("Tab count : %d\n",tc);
printf("Space count : %d\n",sc);
printf("Character count : %d\n",cc);
printf("Line count : %d\n",lc);
printf("Word count : %d\n",wc);

return 0;
}