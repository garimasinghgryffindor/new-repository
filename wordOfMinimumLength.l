%{
#include <stdio.h>
#include <string.h>
char ans[1000];
int flag = 0;
int l = 1000;
%}
%%
[a-zA-Z]+ {int len = strlen(yytext); if(flag == 0) {strcpy(ans,yytext);l = len;flag = 1;} else {   if(len < l){strcpy(ans,yytext);l = len;}}}
. ;
%%
int yywrap()
{
    return 1;
}
int main()
{
    printf("start entering......      ");
    yylex();
    printf("Minimum length string word->    %s\n",ans);
    return 0;
}