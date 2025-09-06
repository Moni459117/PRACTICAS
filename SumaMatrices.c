#include <stdio.h>
#include <stdlib.h>

void ingresarMatriz(int **matriz, int filas, int columnas) {
    for (int i = 0; i < filas; i++) {
        for (int j = 0; j < columnas; j++) {
            printf("Elemento [%d][%d]: ", i, j);
            scanf("%d", &matriz[i][j]);
        }
    }
}

void sumarMatrices(int **matrizA, int **matrizB, int **matrizSuma, int filas, int columnas) {
    for (int i = 0; i < filas; i++) {
        for (int j = 0; j < columnas; j++) {
            matrizSuma[i][j] = matrizA[i][j] + matrizB[i][j];
        }
    }
}

void mostrarMatriz(int **matriz, int filas, int columnas) {
    for (int i = 0; i < filas; i++) {
        for (int j = 0; j < columnas; j++) {
            printf("%d\t", matriz[i][j]);
        }
        printf("\n");
    }
    printf("\n");
}

int main() {
    int filas, columnas;
    
    printf("Ingrese el número de filas: ");
    scanf("%d", &filas);
    printf("Ingrese el número de columnas: ");
    scanf("%d", &columnas);
    
    int **matrizA = (int **)malloc(filas * sizeof(int *));
    int **matrizB = (int **)malloc(filas * sizeof(int *));
    int **matrizSuma = (int **)malloc(filas * sizeof(int *));
    
    for (int i = 0; i < filas; i++) {
        matrizA[i] = (int *)malloc(columnas * sizeof(int));
        matrizB[i] = (int *)malloc(columnas * sizeof(int));
        matrizSuma[i] = (int *)malloc(columnas * sizeof(int));
    }
    
    printf("\nIngrese los elementos de la primera matriz:\n");
    ingresarMatriz(matrizA, filas, columnas);
    
    printf("\nIngrese los elementos de la segunda matriz:\n");
    ingresarMatriz(matrizB, filas, columnas);
    
    sumarMatrices(matrizA, matrizB, matrizSuma, filas, columnas);
    
    printf("\n=== RESULTADOS ===\n");
    printf("Matriz A:\n");
    mostrarMatriz(matrizA, filas, columnas);
    
    printf("Matriz B:\n");
    mostrarMatriz(matrizB, filas, columnas);
    
    printf("Suma (A + B):\n");
    mostrarMatriz(matrizSuma, filas, columnas);
    

    for (int i = 0; i < filas; i++) {
        free(matrizA[i]);
        free(matrizB[i]);
        free(matrizSuma[i]);
    }
    free(matrizA);
    free(matrizB);
    free(matrizSuma);
    
    return 0;
}