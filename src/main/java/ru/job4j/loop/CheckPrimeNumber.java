package ru.job4j.loop;

public class CheckPrimeNumber {
    public static boolean check(int number) {
        for (int i = 2; i < (number - 1); i++) {
            if (((number % i) == 0)) {
                return false;
            }
        }
        return number > 1;
    }
}
