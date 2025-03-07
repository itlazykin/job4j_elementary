package ru.job4j.type;

/**
 * Написать код, который выполняет перестановку первой и последней цифры входящего четырехзначного числа,
 * и выводит результат в консоль.
 */
public class Task36 {
    public static void firstLastChange(int number) {
        int first, middle, last;
        first = number / 1000;
        last = number % 10;
        middle = (number % 1000) / 10;
        int newNumber = last * 1000 + middle * 10 + first;
        System.out.println(newNumber);
    }

    public static void main(String[] args) {
        firstLastChange(1000);
    }
}
