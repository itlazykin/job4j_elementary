package ru.job4j.type;

import java.util.Scanner;

/**
 * Написать код, рассчитывающий периметр и площадь прямоугольного треугольника.
 */
public class Task14 {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        double cathetA = in.nextDouble();
        double cathetB = in.nextDouble();
        double hypotenuse = Math.sqrt(Math.pow(cathetA, 2) + Math.pow(cathetB, 2));
        double perimeter = cathetA + cathetB + hypotenuse;
        double area = 0.5 * (cathetA * cathetB);
        System.out.printf("%.1f%n%.1f", perimeter, area);
    }
}
