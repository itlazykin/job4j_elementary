package ru.job4j.condition;

/**
 * Метод numCheck(int number), который принимает трехзначное положительное целое число.
 * Написать код, который проверяет - является ли число "четно-красивым".
 * Если да - вывести в консоль слово "Да", иначе - "Нет".
 */
public class Task20 {
    public static String numCheck(int number) {
        int hundreds = number % 1000 / 100;
        int tens = number % 100 / 10;
        int ones = number % 10;
        if (hundreds % 2 == 0 && tens % 2 == 0 && ones % 2 == 0) {
            return "Да";
        } else {
            return "Нет";
        }
    }
}
