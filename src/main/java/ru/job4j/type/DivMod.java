package ru.job4j.type;

/**
 * Поделить число 11 нацело на 3 и получить остаток от деления от 3
 */
public class DivMod {
    public static void main(String[] args) {
        int num = 11;
        int div = num / 3;
        int mod = num % 3;
        System.out.println(div);
        System.out.println(mod);
    }
}
