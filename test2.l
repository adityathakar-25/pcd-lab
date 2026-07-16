%{
#include<stdio.h>
%}

%%

^[ \t]*#.*      { printf("%s is a preprocessing statement\n", yytext); }

\/\/.*                       { /* Ignore*/ }
\/\*([^*]|\*+[^*/])*\*+\/    { /* Ignore*/ }

(int|char|float|double|void|long|short|signed|unsigned|bool)                {printf("DT");}
(if|else|for|while|do|switch|case|break|continue|return|struct|default)     {printf("%s", yytext);}

\"([^\\\"]|\\.)*\"  { printf("%s", yytext); }
\'([^\\\']|\\.)\'   { printf("%s", yytext); }
[0-9]+\.[0-9]+      { printf("%s", yytext); }
[0-9]+              { printf("%s", yytext); }

[a-zA-Z_][a-zA-Z0-9_]* {
    if (yyleng > 8)
        printf("Invalid identifier\n");
    else
        printf("ID");
}

"++"  { printf("%s", yytext); }
"--"  { printf("%s", yytext); }

"=="  { printf("%s", yytext); }
"!="  { printf("%s", yytext); }
"<="  { printf("%s", yytext); }
">="  { printf("%s", yytext); }
"<"   { printf("%s", yytext); }
">"   { printf("%s", yytext); }

"&&"  { printf("%s", yytext); }
"||"  { printf("%s", yytext); }
"!"   { printf("%s", yytext); }

"+"   { printf("%s", yytext); }
"-"   { printf("%s",yytext); }
"*"   { printf("%s", yytext); }
"/"   { printf("%s", yytext); }
"%"   { printf("%s", yytext); }

"="   { printf("%s", yytext); }

[\(\)\{\}\[\],;]    { printf("%s", yytext); } 
[@$^~]              { printf("%s", yytext); }

[ \t\n]+ ; {printf("%s", yytext);}

. { printf("unknown token\n"); }

%%

int main(){
    yylex();
    return 0;
}