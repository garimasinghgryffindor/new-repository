%{
#include <stdio.h>
#include <string.h>
int consonants=0, vowels=0;
%}

%%
[aeiouAEIOU] {vowels++;}
[a-zA-Z] {consonants++;}
%%
int yywrap() {
    return 1;
}

int main() {
    yylex();
    printf("Vowels count:  %d\nConsonants count:  %d\n",vowels,consonants);
    return 0;
}