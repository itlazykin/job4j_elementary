package ru.job4j.type;

/**
 * Написать код, который высчитывает количество четных цифр во входящем четырехзначном числе, и выводит результат в консоль.
 */
public class Task34 {
    public static void evenAmount(int number) {
        int counter = 0;
        while (number > 0) {
            int digit = number % 10;
            if (digit % 2 == 0) {
                counter++;
            }
            number /= 10;
        }
        System.out.println(counter);
    }

    public static void main(String[] args) {
        evenAmount(4012);
    }
}
