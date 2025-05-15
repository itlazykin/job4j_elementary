package ru.job4j.condition;

/**
 * В данной задаче вам нужно проверить, что переданное число положительно И четное
 */
public class LogicAnd {
    public static boolean check(int num) {
        return num > 0 && num % 2 == 0;
    }
}
