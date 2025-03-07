package ru.job4j.type;

/**
 * Написать код, который выполняет перестановку первой и последней цифры входящего трехзначного числа, и выводит результат в консоль.
 */
public class Task35 {
    public static void firstLastChange(int number) {
        int num1, num2, num3;
        num1 = number / 100;
        num2 = (number / 10) % 10;
        num3 = number % 10;
        int newNumber = num3 * 100 + num2 * 10 + num1;
        System.out.println(newNumber);
    }

    public static void main(String[] args) {
        firstLastChange(650);
    }
}
