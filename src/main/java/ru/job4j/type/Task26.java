package ru.job4j.type;

/**
 * Построить новое значение, составленное из цифр входящего числа, но в обратном порядке.
 * Полученное значение нужно увеличить на 8 и вывести в консоль.
 */
public class Task26 {
    public static void transform(int number) {
        int num1, num2;
        num1 = number / 10;
        num2 = number % 10;
        int reversedNumber = num2 * 10 + num1;
        int result = reversedNumber + 8;
        System.out.println(result);
    }

    public static void main(String[] args) {
        transform(37);
    }
}
