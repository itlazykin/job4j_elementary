package ru.job4j.first;

import java.util.Scanner;

/**
 * Дана сторона квадрата A. Найти его периметр.
 * Дан радиус окружности R. Найти длину окружности и площадь круга.*
 * Результат каждого вычисления выводите в новой строке с точностью до десятых.
 * *при расчётах используйте вызов Math.PI
 */
public class Task18 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        double a = input.nextDouble();
        double r = input.nextDouble();
        double squarePerimeter = a * 4;
        double circleLength = 2 * Math.PI * r;
        double circleArea = Math.PI * Math.pow(r, 2);
        String first = String.format("%.1f", squarePerimeter);
        String second = String.format("%.1f", circleLength);
        String third = String.format("%.1f", circleArea);
        System.out.println(first);
        System.out.println(second);
        System.out.println(third);
    }
}
