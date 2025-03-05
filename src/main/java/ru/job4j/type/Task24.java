package ru.job4j.type;

/**
 * Вывести входящее число в консоль в одну строку в "полном виде", то есть в виде "десятки+единицы".
 */
public class Task24 {
    public static void separate(int number) {
        int num1, num2;
        num1 = (number / 10) * 10;
        num2 = number % 10;
        System.out.println(num1 + "+" + num2);
    }

    public static void main(String[] args) {
        separate(35);
    }
}
