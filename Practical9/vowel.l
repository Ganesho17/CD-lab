%{
#include <stdio.h>

int vowel_count = 0;      // Counter for vowels
int consonant_count = 0;  // Counter for consonants
%}

%option noyywrap

%%
[aAeEiIoOuU]              { vowel_count++; }  
[b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z] { consonant_count++; }  
.                        ;   // Ignore other characters
%%

int main()
{
    printf("Enter a string: ");
    yylex();   // Start lexical analysis

    printf("Number of vowels: %d\n", vowel_count);
    printf("Number of consonants: %d\n", consonant_count);

    return 0;
}