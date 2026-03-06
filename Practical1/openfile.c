#include <stdio.h>
#include <ctype.h>
#include <string.h>
#include <stdlib.h>

int main() {
    FILE *f1;
    char ch;

    f1 = fopen("C:/CompilerDesign/Practical1/lex.text", "r");

    if (f1 == NULL) {
        printf("File not found\n");
        exit(0);
    }

    while ((ch = fgetc(f1)) != EOF) {
        printf("%c", ch);
    }

    fclose(f1);
    return 0;
}