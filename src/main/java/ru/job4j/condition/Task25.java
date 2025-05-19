package ru.job4j.condition;

/**
 * Написать код, который выводит в консоль "Да", если число положительное, иначе "Нет".
 */
public class Task25 {
    public static void isPositive(int number) {
        if (number < 0) {
            System.out.println("Нет");
        } else {
            System.out.println("Да");
        }
    }
}
