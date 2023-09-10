/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.miempresa.webapp02ejercicio;

/**
 *
 * @author valer
 */
public class OperacionesBasicas {
    public int suma(int a, int b) {
        int resultado = a + b;
        return resultado;
    }
    public int resta(int a, int b) {
        int resultado = a - b;
        return resultado;
    }
    public int multiplicacion(int a, int b) {
        int resultado = a * b;
        return resultado;
    }
    public double division(int a, int b) {
        double resultado = (double) a / b; // Convierte uno de los operandos a double
        return resultado;
    }
}
