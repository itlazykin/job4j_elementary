package ru.job4j.array;

public class StringUsage {
    public static void main(String[] args) {
        String first = "aaabvddrr";
        System.out.println("Length of string FIRST: " + first.length());
        String second = "aaabbbvdddrrr";
        System.out.println("Length of string SECOND: " + second.length());
        String third = "abbvdddr";
        System.out.println("Length of string THIRD: " + third.length());
        String input = "aaabbbvdddrrr";
        System.out.println("Symbol with index = 2: " + input.charAt(2));
        System.out.println("Symbol with index = 3: " + input.charAt(3));
        System.out.println("Symbol with index = 6: " + input.charAt(6));
        System.out.println("Symbol with index = 9: " + input.charAt(9));
        System.out.println("Symbol with index = 10: " + input.charAt(10));
    }
}
