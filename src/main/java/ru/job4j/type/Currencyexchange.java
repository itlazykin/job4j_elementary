package ru.job4j.type;

import java.util.Scanner;

/**
 * Написать код, реализующий преобразование исходной валюты по указанному "банковскому курсу".
 */
public class Currencyexchange {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int dollars = in.nextInt();
        double transferRate = in.nextDouble();
        double rslCurrency = (double)  dollars * transferRate;
        System.out.printf("%.2f", rslCurrency);
    }
}
