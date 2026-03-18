%{
#include <stdio.h>

int line_number = 1;   // Initialize line number
%}

%%
.*\n     { printf("%4d  %s", line_number++, yytext); }
.+       { printf("%4d  %s\n", line_number++, yytext); }
%%

int yywrap()
{
    return 1;
}

int main(int argc, char *argv[])
{
    if (argc > 1)
    {
        yyin = fopen(argv[1], "r");
        if (!yyin)
        {
            printf("Cannot open file\n");
            return 1;
        }
    }
    else
    {
        yyin = stdin;
    }

    yylex();
    return 0;
}