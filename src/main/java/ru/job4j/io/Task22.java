package ru.job4j.io;

/**
 * Написать код, который выводит в консоль отформатированную строку в виде "Привет, Имя!".
 */
public class Task22 {
    public static void nameInsert(String name) {
        String rsl = String.format("Привет, %s!", name);
        System.out.println(rsl);
    }
}
