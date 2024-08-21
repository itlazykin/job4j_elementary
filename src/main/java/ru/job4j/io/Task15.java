package ru.job4j.io;

/**
 * Напишите класс, который анализирует входящую строку и выводит на экран в первой строке три раза первый символ,
 * во второй строке - четыре раза второй символ, и в третьей - два раза третий символ.
 * Например, для входящей строки "+!?" вывод должен быть в виде:
 * +++
 * !!!!
 * ??
 */
public class Task15 {
    public static void main(String[] args) {
        String source = "+!?";
        Character first = source.charAt(0);
        Character second = source.charAt(1);
        Character third = source.charAt(2);
        for (int i = 0; i < 3; i++) {
            System.out.print(first);
        }
        System.out.println();
        for (int i = 0; i < 4; i++) {
            System.out.print(second);
        }
        System.out.println();
        for (int i = 0; i < 2; i++) {
            System.out.print(third);
        }
    }
}
