package ru.job4j.condition;

public class OperatorsRunner {
    public static void main(String[] args) {
        int i = 1234;
        int thousands = i / 1000;
        int hundreds = i % 1000 / 100;
        int tens = i % 100 / 10;
        int ones = i % 10;
        System.out.println(
                "Thousands: " + thousands
                        + ", Hundreds: " + hundreds
                        + ", Tens: " + tens
                        + ", Ones: " + ones
        );
    }
}
