package ru.job4j.condition;

public class MathAbsUsage {
    public static void main(String[] args) {
        int first = 10;
        int second = 3;
        int result = second - first;
        System.out.println("second - first = " + result);
        int abs = Math.abs(result);
        System.out.println("second - first = " + abs);
    }
}
