package ru.job4j.type;

/**
 * Написать код, который высчитывает разницу между числом десятков (первая цифра)
 * и числом единиц (вторая цифра) входящего двузначного числа, и выводит результат в консоль.
 */
public class Task30 {
    public static void difference(int number) {
        int num1, num2;
        num1 = number / 10;
        num2 = number % 10;
        int rsl = num2 - num1;
        System.out.println(Math.abs(rsl));
    }

    public static void main(String[] args) {
        difference(35);
    }
}
