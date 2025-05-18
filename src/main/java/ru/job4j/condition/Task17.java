package ru.job4j.condition;

/**
 * Написать код, который выводит в консоль одно из слов: "Положительное", "Ноль" или "Отрицательное",
 * в зависимости от значения входящего числа.
 */
public class Task17 {
    public static String signCheck(int number) {
        if (number > 0) {
            return "Положительное";
        } else if (number == 0) {
            return "Ноль";
        } else {
            return "Отрицательное";
        }
    }
}
