package ru.job4j.condition;

public class StringEq {
    public static void main(String[] args) {
        String first = new String("one");
        String second = new String("one");
        if ("one".equals(first)) {
            System.out.println("first equals one");
        } else {
            System.out.println("first does not equal one");
        }
    }
}
