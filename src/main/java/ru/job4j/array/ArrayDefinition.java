package ru.job4j.array;

public class ArrayDefinition {
    public static void main(String[] args) {
        short[] ages = new short[10];
        System.out.println("Размера массива равен = " + ages.length);
        String[] surnames = new String[100500];
        System.out.println("Размера массива равен = " + surnames.length);
        float[] prices = new float[40];
        System.out.println("Размера массива равен = " + prices.length);
        String[] names = new String[4];
        names[0] = "Denis Lazykin";
        names[1] = "Anastasia Lazykina";
        names[2] = "Artem Lazykin";
        names[3] = "Danya Deev";
        System.out.println(names[0]);
        System.out.println(names[1]);
        System.out.println(names[2]);
        System.out.println(names[3]);
    }
}
