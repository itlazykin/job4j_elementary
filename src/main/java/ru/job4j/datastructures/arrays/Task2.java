package ru.job4j.datastructures.arrays;

import java.util.HashMap;

/**
 * Первые неповторяющиеся целые числа в массиве
 */
public class Task2 {
    public static int num(int[] data) {
        if (data == null || data.length == 0) {
            return -1;
        }
        HashMap<Integer, Integer> values = new HashMap<>();
        for (int num : data) {
            values.put(num, values.getOrDefault(num, 0) + 1);
        }
        for (int num : data) {
            if (values.get(num) == 1) {
                return num;
            }
        }
        return -1;
    }

    public static void main(String[] args) {
        int[] arrays = {4, 5, 1, 2, 5, 4, 1, 3, 7, 10};
        System.out.println(num(arrays));
    }
}
