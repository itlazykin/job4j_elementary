package ru.job4j.condition;

/**
 * Написать код, который уменьшает число на единицу, если оно как минимум трехзначное и положительное.
 * Результат вывести в консоль. Если число не проходит по условию, то вывести это же число без изменений.
 */
public class Task18 {
    public static int numDecrease(int number) {
        if (number > 99) {
            return number - 1;
        } else {
            return number;
        }
    }
}
