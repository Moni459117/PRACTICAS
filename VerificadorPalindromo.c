#include <stdio.h>
#include <ctype.h>
#include <string.h>
#include <stdbool.h>

bool esPalindromo(char texto[]) {
    char textoLimpio[100];
    int i, j = 0;
    int longitud;
    
    for (i = 0; texto[i] != '\0'; i++) {
        if (texto[i] != ' ') {
            textoLimpio[j++] = tolower(texto[i]);
        }
    }
    textoLimpio[j] = '\0';
    
    longitud = strlen(textoLimpio);
    for (i = 0; i < longitud / 2; i++) {
        if (textoLimpio[i] != textoLimpio[longitud - i - 1]) {
            return false;
        }
    }
    return true;
}

int main() {
    char entrada[100];
    
    printf("=== VERIFICADOR DE PALÍNDROMOS ===\n");
    printf("Ingrese un número o palabra: ");
    fgets(entrada, sizeof(entrada), stdin);
    
    entrada[strcspn(entrada, "\n")] = '\0';
    
    if (esPalindromo(entrada)) {
        printf(" ES un palíndromo\n", entrada);
    } else {
        printf(" NO es un palíndromo\n", entrada);
    }
    
    return 0;
}