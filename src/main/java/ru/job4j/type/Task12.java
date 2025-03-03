package ru.job4j.type;

import java.util.Scanner;

/**
 * Написать код, реализующий перевод дюймов в сантиметры.
 */
public class Task12 {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int inches = in.nextInt();
        double centimeters = (double) inches * 2.54;
        System.out.printf("%.2f", centimeters);
    }
}
