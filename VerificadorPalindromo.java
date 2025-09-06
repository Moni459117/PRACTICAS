/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Monica Ileana
 */
import java.util.Scanner;

public class VerificadorPalindromo {
    
    public static boolean esPalindromo(String texto) {
        String textoLimpio = texto.replaceAll("\\s+", "").toLowerCase();
        
        int izquierda = 0;
        int derecha = textoLimpio.length() - 1;
        
        while (izquierda < derecha) {
            if (textoLimpio.charAt(izquierda) != textoLimpio.charAt(derecha)) {
                return false;
            }
            izquierda++;
            derecha--;
        }
        return true;
    }
    
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.println("=== VERIFICADOR DE PALÍNDROMOS ===");
        System.out.print("Ingrese un número o palabra: ");
        String entrada = scanner.nextLine();
        
        if (esPalindromo(entrada)) {
            System.out.println(entrada + "' ES un palíndromo");
        } else {
            System.out.println(entrada + "' NO es un palíndromo");
        }
        
        scanner.close();
    }
}