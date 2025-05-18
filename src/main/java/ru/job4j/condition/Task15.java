package ru.job4j.condition;

/**
 * Написать код, который увеличивает входящее число вдвое, если оно положительное, и выводит его в консоль.
 * Если число не положительное, его нужно вывести без изменений.
 */
public class Task15 {
    public static void multiLyByTwo(int number) {
        if (number >= 0) {
            System.out.println(number * 2);
        } else {
            System.out.println(number);
        }
    }
}
