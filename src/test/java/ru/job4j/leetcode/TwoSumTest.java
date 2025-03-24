package ru.job4j.leetcode;

import org.junit.jupiter.api.Test;

import static org.assertj.core.api.Assertions.*;

class TwoSumTest {
    @Test
    void whenArray271115Than01() {
        int[] array = {2, 7, 11, 15};
        int target = 9;
        int[] rsl = TwoSum.twoSum(array, target);
        assertThat(rsl).isEqualTo(new int[]{0, 1});
    }
}