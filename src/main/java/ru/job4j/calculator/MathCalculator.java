package ru.job4j.calculator;

import static ru.job4j.math.MathFunction.*;

public class MathCalculator {
    public static double sumAndMultiply(double first, double second) {
        return sum(first, second) + multiply(first, second);
    }

    public static double differenceAndDivided(double first, double second) {
        return difference(first, second) + divided(first, second);
    }

    public static double sumAll(double first, double second) {
        return sum(first, second)
                + multiply(first, second)
                + difference(first, second)
                + divided(first, second);
    }

    public static void main(String[] args) {
        System.out.println(sumAndMultiply(10, 20));
        System.out.println(differenceAndDivided(10, 20));
        System.out.println(sumAll(10, 20));
    }
}
