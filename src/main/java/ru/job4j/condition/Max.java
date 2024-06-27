package ru.job4j.condition;

public class Max {
    public static int max(int left, int right) {
        return left > right ? left : right;
    }

    public static int max(int first, int second, int third) {
        return max(first, max(second, third));
    }

    public static int max(int first, int second, int third, int four) {
        return max(max(first, second), max(third, four));
    }

    public static void main(String[] args) {
        System.out.println(max(5, 6));
        System.out.println(max(6, 5));
        System.out.println(max(6, 6));
        System.out.println(max(-1, 6));
        System.out.println(max(10, 20, 30));
        System.out.println(max(10, 20, 30, 40));
    }
}
