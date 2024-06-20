package ru.job4j.array;

import java.util.Arrays;

public class Machine {
    /**
     * метод эффективно рассчитывает минимальное количество монет для сдачи, используя жадный алгоритм.
     *
     * @param money сумма денег от покупателя
     * @param price цена товара
     * @return метод возвращает копию массива result, содержащую только те элементы, которые были добавлены (до size).
     */
    public static int[] change(int money, int price) {
        int[] coins = {10, 5, 2, 1};
        int[] result = new int[100];
        int size = 0;
        int change = money - price;
        for (int coin : coins) {
            while (change >= coin) {
                change -= coin;
                result[size++] = coin;
            }
        }
        return Arrays.copyOf(result, size);
    }
}
