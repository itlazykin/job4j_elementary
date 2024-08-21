package ru.job4j.io;

/**
 * Напишите класс, который выводит на экран в одной строке ваше фамилию, имя, отчество,
 * в другой ― телефон, все это ― в рамке из «звездочек».
 *
 */
public class Task21 {
    public static void main(String[] args) {
        String fullName = "Фамилия Имя Отчество";
        String phoneNumber = "+7(938) 123-45-67";
        String stars = "************************";
        String star = "*";
        System.out.print(stars + System.lineSeparator()
                + star + " " + fullName + " " + star + System.lineSeparator()
                + star + " " + phoneNumber + "    " + star + System.lineSeparator()
                + stars);
    }
}
