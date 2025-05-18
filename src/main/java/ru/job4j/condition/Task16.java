package ru.job4j.condition;

/**
 * Написать код, который выводит в консоль слово "Zero", если число - ноль, либо "Not zero", если число не ноль.
 */
public class Task16 {
    public static String zeroCheck(int number) {
        if (number == 0) {
            return "Zero";
        } else {
            return "Not zero";
        }
    }
}
