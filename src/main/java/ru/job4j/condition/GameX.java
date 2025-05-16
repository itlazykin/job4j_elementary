package ru.job4j.condition;

/**
 * Метод принимает 3 параметра:
 * 1. Вероятность выигрыша;
 * 2. Стоимость выигрыша;
 * 3. Цена игры.
 * Необходимо реализовать метод так, чтобы при условии, что сумма выигрыша
 * (произведение вероятности и стоимости выигрыша) превышает цену игры, метод вернул разницу между этими величинами
 * (т.е чистую прибыль), или вернул 0 (при условии, что чистая прибыль меньше или равна 0).
 */
public class GameX {
    public static int checkGame(double percent, int prize, int pay) {
        double winSum = percent * prize;
        double netProfit = winSum - pay;
        if (winSum > pay) {
            return (int) netProfit;
        } else if (netProfit <= 0) {
            return 0;
        }
        return -1;
    }
}
