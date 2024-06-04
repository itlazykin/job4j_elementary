package ru.job4j.calculator;

public class Out {
    public static void main(String[] args) {
        String lyrics = "Мама мыла раму";
        System.out.println(lyrics);
        String name = "Denis";
        String surname = "Lazykin";
        String separate = " ";
        String id = name + separate + surname;
        System.out.println(id);
        System.out.println();
        name = "Denis";
        byte age = 33;
        separate = " - ";
        id = name + separate + age + " years old";
        System.out.println(id);
        System.out.println();
        int first = 1;
        int second = 2;
        int onePlusTwo = first + second;
        System.out.println("1 + 2 = " + onePlusTwo);
        System.out.println();
        String label = "I ";
        label = label + "like ";
        label += "Java!";
        System.out.println(label);
    }
}
