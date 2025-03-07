package ru.job4j.type;

/**
 * Написать код, который высчитывает сумму цифр данного числа, и выводит результат в консоль.
 */
public class Task28 {
    public static void numSum(int number) {
        int num1, num2;
        num1 = number / 10;
        num2 = number % 10;
        System.out.println(num1 + num2);
    }
}
