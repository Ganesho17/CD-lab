#include <stdio.h>
int main() {
    int n,m;
    printf("Enter two numbers: ");
    scanf("%d %d",&n , &m);
    if(n > m){
        printf("Largest no:%d",n);
    }else
    printf("Largest no:%d",m);
return 0;
}