#include <stdio.h>
#include <stdlib.h>

int main() {
    int filasA, columnasA, filasB, columnasB;
    
    printf("=== MULTIPLICACIÓN DE MATRICES ===\n");
    printf("Filas de la matriz A: ");
    scanf("%d", &filasA);
    printf("Columnas de la matriz A: ");
    scanf("%d", &columnasA);
    
    printf("Filas de la matriz B: ");
    scanf("%d", &filasB);
    printf("Columnas de la matriz B: ");
    scanf("%d", &columnasB);
    
    if (columnasA != filasB) {
        printf("Error: No se pueden multiplicar las matrices.\n");
        printf("El número de columnas de A debe ser igual al número de filas de B.\n");
        return 1;
    }
    
    int **matrizA = (int **)malloc(filasA * sizeof(int *));
    int **matrizB = (int **)malloc(filasB * sizeof(int *));
    int **matrizResultado = (int **)malloc(filasA * sizeof(int *));
    
    for (int i = 0; i < filasA; i++) {
        matrizA[i] = (int *)malloc(columnasA * sizeof(int));
        matrizResultado[i] = (int *)malloc(columnasB * sizeof(int));
    }
    
    for (int i = 0; i < filasB; i++) {
        matrizB[i] = (int *)malloc(columnasB * sizeof(int));
    }
    
    printf("\nIngrese los elementos de la matriz A:\n");
    for (int i = 0; i < filasA; i++) {
        for (int j = 0; j < columnasA; j++) {
            printf("A[%d][%d]: ", i, j);
            scanf("%d", &matrizA[i][j]);
        }
    }
    
    printf("\nIngrese los elementos de la matriz B:\n");
    for (int i = 0; i < filasB; i++) {
        for (int j = 0; j < columnasB; j++) {
            printf("B[%d][%d]: ", i, j);
            scanf("%d", &matrizB[i][j]);
        }
    }
    
    for (int i = 0; i < filasA; i++) {
        for (int j = 0; j < columnasB; j++) {
            matrizResultado[i][j] = 0;
            for (int k = 0; k < columnasA; k++) {
                matrizResultado[i][j] += matrizA[i][k] * matrizB[k][j];
            }
        }
    }
    
    printf("\n=== RESULTADOS ===\n");
    
    printf("Matriz A:\n");
    for (int i = 0; i < filasA; i++) {
        for (int j = 0; j < columnasA; j++) {
            printf("%4d ", matrizA[i][j]);
        }
        printf("\n");
    }
    printf("\n");
    
    printf("Matriz B:\n");
    for (int i = 0; i < filasB; i++) {
        for (int j = 0; j < columnasB; j++) {
            printf("%4d ", matrizB[i][j]);
        }
        printf("\n");
    }
    printf("\n");
    
    printf("Matriz Resultado (A × B):\n");
    for (int i = 0; i < filasA; i++) {
        for (int j = 0; j < columnasB; j++) {
            printf("%6d ", matrizResultado[i][j]);
        }
        printf("\n");
    }
    
    for (int i = 0; i < filasA; i++) {
        free(matrizA[i]);
        free(matrizResultado[i]);
    }
    for (int i = 0; i < filasB; i++) {
        free(matrizB[i]);
    }
    free(matrizA);
    free(matrizB);
    free(matrizResultado);
    
    return 0;
}