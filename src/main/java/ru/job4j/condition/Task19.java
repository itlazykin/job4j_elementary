package ru.job4j.condition;

/**
 * Написать код, который выводит на экран сумму этих чисел, если первое больше второго,
 * если же наоборот - выводит их произведение.
 * В случае, если числа одинаковы, вывести сообщение "Числа равны".
 */
public class Task19 {
    public static void sumOrMultiply(int num1, int num2) {
        if (num1 > num2) {
            System.out.println(num1 + num2);
        } else if (num1 < num2) {
            System.out.println(num1 * num2);
        } else {
            System.out.println("Числа равны");
        }
    }
}
