package ru.job4j.type;

import java.util.Scanner;

/**
 * Написать код, реализующий перевод сантиметров в дюймы.
 */
public class Task11 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int centimeters = input.nextInt();
        double inches = (double) centimeters / 2.54;
        System.out.printf("%.2f", inches);
    }
}
