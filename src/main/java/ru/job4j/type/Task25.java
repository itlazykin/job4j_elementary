package ru.job4j.type;

/**
 * Вывести входящее число в консоль в одну строку в "полном виде", то есть в виде "сотни+десятки+единицы".
 */
public class Task25 {
    public static void separate(int number) {
        int num1, num2, num3;
        num1 = (number / 100) * 100;
        num2 = (number % 100 / 10) * 10;
        num3 = number % 10;
        System.out.println(num1 + "+" + num2 + "+" + num3);
    }

    public static void main(String[] args) {
        separate(335);
    }
}
