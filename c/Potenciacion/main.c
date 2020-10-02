#include <stdio.h>
#include <stdlib.h>


int elevate(int base,int potencia){

    int multiplicacion;
    int aux;



    multiplicacion = base * base;
    aux = base;
    for (int i = potencia; i>1;i--){

      aux*=base;
    }
    return aux;




}

int convert (monto){
return = monto*3,783.50;
}



int main()
{
    int base;
    int exponente;


    printf("Ingresa la base: \n");
    scanf("%i",&base);
    printf("Ingresa el exponente: \n");
    scanf("%i",&exponente);
    int prueba = elevate(base,exponente);
    printf("total: %i",prueba);
    return 0;
}
