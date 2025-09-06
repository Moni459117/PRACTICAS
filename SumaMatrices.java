/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Monica Ileana
 */
import java.util.Scanner;

public class SumaMatrices {
    
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.print("Ingrese el número de filas: ");
        int filas = scanner.nextInt();
        
        System.out.print("Ingrese el número de columnas: ");
        int columnas = scanner.nextInt();
        
        int[][] matrizA = new int[filas][columnas];
        int[][] matrizB = new int[filas][columnas];
        int[][] matrizSuma = new int[filas][columnas];
        
        System.out.println("\nIngrese los elementos de la primera matriz:");
        ingresarMatriz(matrizA, scanner);
        
        System.out.println("\nIngrese los elementos de la segunda matriz:");
        ingresarMatriz(matrizB, scanner);
        
        sumarMatrices(matrizA, matrizB, matrizSuma);
        
        System.out.println("\n=== RESULTADOS ===");
        
        System.out.println("Matriz A:");
        mostrarMatriz(matrizA);
        
        System.out.println("Matriz B:");
        mostrarMatriz(matrizB);
        
        System.out.println("Suma (A + B):");
        mostrarMatriz(matrizSuma);
        
        scanner.close();
    }
    
    public static void ingresarMatriz(int[][] matriz, Scanner scanner) {
        for (int i = 0; i < matriz.length; i++) {
            for (int j = 0; j < matriz[0].length; j++) {
                System.out.print("Elemento [" + i + "][" + j + "]: ");
                matriz[i][j] = scanner.nextInt();
            }
        }
    }
    
    public static void sumarMatrices(int[][] matrizA, int[][] matrizB, int[][] matrizSuma) {
        for (int i = 0; i < matrizA.length; i++) {
            for (int j = 0; j < matrizA[0].length; j++) {
                matrizSuma[i][j] = matrizA[i][j] + matrizB[i][j];
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