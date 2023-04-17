%{
#include <stdio.h>
%}
%%
[1-9]+ {int num=atoi(yytext);
    int i=1;
    fprintf(yyout,"\nTable for %d\n\n",num);
       for(i=1;i<=10;i++)
       {
        fprintf(yyout,"\n%d*%d=%d",num,i,num*i);
       }
      }
.* ;
%%
int yywrap(){
    return 1;
}
int main()
{
    yyout=fopen("tableout.txt","w");
    printf("Enter a number");
    yylex();
   
    return 0;
}