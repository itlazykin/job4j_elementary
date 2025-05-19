package ru.job4j.condition;

/**
 * Написать код, который выводит в консоль "Да", если числа равны между собой, иначе "Нет".
 */
public class Task26 {
    public static void isEqual(int num1, int num2) {
        if (num1 == num2) {
            System.out.println("Да");
        } else {
            System.out.println("Нет");
        }
    }
}
