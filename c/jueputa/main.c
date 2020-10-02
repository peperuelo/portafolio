#include <stdio.h>
#include <stdlib.h>

int main()
{
    float r;
    float h;
    float area;
    printf("ingresa la altura");
    scanf("%f", &h);
    printf("ingresa el radio");
    scanf("%f", &r);
    area = 2*r*(r+h)*(3.141592);



    printf("el area es %f", area);


    return 0;
}
