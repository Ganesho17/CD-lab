%{
#include <stdio.h>

int tags = 0;
%}

%%
"<"[^>]*">"     { tags++; printf("%s\n", yytext); }
.|\n            { /* ignore everything else */ }
%%

int yywrap(void)
{
    return 1;
}

int main()
{
    FILE *f;
    char file[50];

    printf("Enter File Name: ");
    scanf("%s", file);

    f = fopen(file, "r");
    if (!f)
    {
        printf("Cannot open file\n");
        return 1;
    }

    yyin = f;
    yylex();

    printf("\nNumber of HTML tags: %d\n", tags);

    fclose(f);
    return 0;
}