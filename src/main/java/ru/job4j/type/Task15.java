package ru.job4j.type;

public class Task15 {
    public static String increaseBy2(int number) {
        int a, b, c;
        a = number + 2;
        b = a + 2;
        c = b + 2;
        return a + ", " + b + ", " + c;
    }

    public static void main(String[] args) {
        System.out.println(increaseBy2(6));
    }
}
