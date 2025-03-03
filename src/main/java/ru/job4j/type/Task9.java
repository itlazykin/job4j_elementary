package ru.job4j.type;

import java.util.Scanner;

/**
 * Даны два действительных числа a и b. Вычислить их сумму, разность, произведение и частное.
 */
public class Task9 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int a = input.nextInt();
        int b = input.nextInt();
        int sum = a + b;
        int difference = a - b;
        int multiple = a * b;
        int division = a / b;
        System.out.println(sum);
        System.out.println(difference);
        System.out.println(multiple);
        System.out.println(division);
    }
}
