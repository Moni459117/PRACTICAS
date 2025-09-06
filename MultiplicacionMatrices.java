/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Monica Ileana
 */
import java.util.Scanner;

public class MultiplicacionMatrices {
    
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.println("=== MULTIPLICACIÓN DE MATRICES ===");
        System.out.print("Filas de la matriz A: ");
        int filasA = scanner.nextInt();
        System.out.print("Columnas de la matriz A: ");
        int columnasA = scanner.nextInt();
        
        System.out.print("Filas de la matriz B: ");
        int filasB = scanner.nextInt();
        System.out.print("Columnas de la matriz B: ");
        int columnasB = scanner.nextInt();
        
        if (columnasA != filasB) {
            System.out.println("Error: No se pueden multiplicar las matrices.");
            System.out.println("El número de columnas de A debe ser igual al número de filas de B.");
            scanner.close();
            return;
        }
        
        int[][] matrizA = new int[filasA][columnasA];
        int[][] matrizB = new int[filasB][columnasB];
        int[][] matrizResultado = new int[filasA][columnasB];
        
        System.out.println("\nIngrese los elementos de la matriz A:");
        for (int i = 0; i < filasA; i++) {
            for (int j = 0; j < columnasA; j++) {
                System.out.print("A[" + i + "][" + j + "]: ");
                matrizA[i][j] = scanner.nextInt();
            }
        }
        
        System.out.println("\nIngrese los elementos de la matriz B:");
        for (int i = 0; i < filasB; i++) {
            for (int j = 0; j < columnasB; j++) {
                System.out.print("B[" + i + "][" + j + "]: ");
                matrizB[i][j] = scanner.nextInt();
            }
        }
        
        multiplicarMatrices(matrizA, matrizB, matrizResultado);
        

        System.out.println("\n=== RESULTADOS ===");
        
        System.out.println("Matriz A:");
        mostrarMatriz(matrizA);
        
        System.out.println("Matriz B:");
        mostrarMatriz(matrizB);
        
        System.out.println("Matriz Resultado (A × B):");
        mostrarMatriz(matrizResultado);
        
        scanner.close();
    }
    
    public static void multiplicarMatrices(int[][] A, int[][] B, int[][] resultado) {
        int filasA = A.length;
        int columnasA = A[0].length;
        int columnasB = B[0].length;
        
        for (int i = 0; i < filasA; i++) {
            for (int j = 0; j < columnasB; j++) {
                int suma = 0;
                for (int k = 0; k < columnasA; k++) {
                    suma += A[i][k] * B[k][j];
                }
                resultado[i][j] = suma;
            }
        }
    }
    
    public static void mostrarMatriz(int[][] matriz) {
        for (int i = 0; i < matriz.length; i++) {
            for (int j = 0; j < matriz[0].length; j++) {
                System.out.print(matriz[i][j] + "\t");
            }
            System.out.println();
        }
        System.out.println();
    }
}
