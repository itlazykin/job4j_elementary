package ru.job4j.type;

/**
 * Написать код, который высчитывает сумму баллов со всех крышек
 */
public class Task18 {
    public static int capSum(int tens, int hundreds, int thousands) {
        return (tens * 10) + (hundreds * 100) + (thousands * 1000);
    }
}
