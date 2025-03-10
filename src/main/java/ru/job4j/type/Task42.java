package ru.job4j.type;

/**
 * Написать код, который выполняет "сдвиг числа вправо по кругу", то есть все цифры числа сдвигаются вправо,
 * а число единиц (последняя цифра) перемещается в старший разряд числа (первая цифра). Результат вывести в консоль.
 */
public class Task42 {
    public static void rightCircleShift(int number) {
        int lastDigit = number % 10;
        int firstTwoDigits = number / 10;
        int shiftedNumber = lastDigit * 1000 + firstTwoDigits;
        System.out.println(shiftedNumber);
    }

    public static void main(String[] args) {
        rightCircleShift(4123);
    }
}
