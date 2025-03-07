package ru.job4j.type;

/**
 * Построить новое значение, составленное из цифр входящего числа, но в обратном порядке.
 * Полученное значение нужно уменьшить на 20 и вывести в консоль.
 */
public class Task27 {
    public static void transform(int number) {
        int num1, num2, num3;
        num1 = number / 100;
        num2 = number % 100 / 10;
        num3 = number % 10;
        int reversedNumber = (num3 * 100) + (num2 * 10) + num1;
        int rsl = reversedNumber - 20;
        System.out.println(rsl);
    }

    public static void main(String[] args) {
        transform(327);
    }
}
