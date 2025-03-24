package ru.job4j.leetcode;

import java.util.Arrays;

/**
 * 1. Two Sum
 * Дан массив целых чисел nums и целочисленный целевой объект, вернуть индексы двух чисел таким образом,
 * чтобы они в сумме давали целевой объект.
 * Можно предположить, что каждый входной параметр будет иметь ровно одно решение,
 * и нельзя использовать один и тот же элемент дважды.
 * Вы можете вернуть ответ в любом порядке.
 */
public class TwoSum {
    public static int[] twoSum(int[] nums, int target) {
        for (int i = 0; i < nums.length - 1; i++) {
            for (int j = i + 1; j < nums.length; j++) {
                if (nums[i] + nums[j] == target) {
                    return new int[]{i, j};
                }
            }
        }
        return new int[0];
    }

    public static void main(String[] args) {
        int[] numbers = {2, 7, 11, 15};
        System.out.println(Arrays.toString(twoSum(numbers, 9)));
    }
}
