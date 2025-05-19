package ru.job4j.condition;

/**
 * Написать код, который выводит в консоль "Да", если дробь положительная, иначе "Нет".
 */
public class Task24 {
    public static void isPositive(int num1, int num2) {
        if ((num1 > 0 && num2 > 0) || (num1 < 0 && num2 < 0)) {
            System.out.println("Да");
        } else {
            System.out.println("Нет");
        }
    }
}
