package ru.job4j.io;

/**
 * Напишите класс, который анализирует входящую строку и выводит на экран последовательно три первых символа строки,
 * затем четыре вторых символа и затем два третьих символа строки.
 */
public class Task16 {
    public static void main(String[] args) {
        String source = "+!?";
        Character first = source.charAt(0);
        Character second = source.charAt(1);
        Character third = source.charAt(2);
        for (int i = 0; i < 3; i++) {
            System.out.print(first);
        }
        for (int i = 0; i < 4; i++) {
            System.out.print(second);
        }
        for (int i = 0; i < 2; i++) {
            System.out.print(third);
        }
    }
}
