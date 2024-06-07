package ru.job4j.condition;

public class Film {
    public static String permission(int age) {
        String label = age >= 18 ? "Please, enjoy it." : "You can't watch it.";
        return label;
    }

    public static void main(String[] args) {
        String message = permission(33);
        System.out.println(message);
        message = permission(17);
        System.out.println(message);
    }
}
