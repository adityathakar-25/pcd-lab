%{
#include<stdio.h>
%}
%%
^#.*  {printf("%s preprocessing statement",yytext);}
[0-9]+   {printf("%s is integer constant",yytext);}
%%
int main()
{
yylex();
return 0;
}