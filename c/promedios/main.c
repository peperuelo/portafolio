#include <stdio.h>
#include <stdlib.h>

int main()
{
    char cadena[50];
    int size;

    printf("Ingresa tu palabra \n");
    gets(cadena);

    size = strlen(cadena);

    printf("la palabra al revez es ");

    for (int i= size ; i>0 ;i--){
            printf("%c",cadena[i]);
            }
    return 0;
}
