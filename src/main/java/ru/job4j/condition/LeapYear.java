package ru.job4j.condition;

/**
 * Необходимо реализовать метод, который принимает целочисленное значение (номер года), и на выходе вернуть булево значение - true, если год високосный и false, если год невисокосный.
 */
public class LeapYear {
    public static boolean checkYear(int year) {
        return (year % 100 != 0 && year % 4 == 0) || (year % 400 == 0);
    }
}
