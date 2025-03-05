package ru.job4j.type;

/**
 * Отделить цифры данного числа друг от друга и вывести их в консоль в одну строку через пробел в обратном порядке.
 */
public class Task22 {
    public static void separate(int number) {
        int num1, num2;
        num1 = number / 10;
        num2 = number % 10;
        System.out.println(num2 + " " + num1);
    }
}
