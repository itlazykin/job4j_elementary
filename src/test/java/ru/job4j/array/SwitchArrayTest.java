package ru.job4j.array;

import org.junit.jupiter.api.Test;

import static org.assertj.core.api.Assertions.*;

class SwitchArrayTest {
    @Test
    void whenSwapBorderArrayLengthIs4() {
        int[] input = {1, 2, 3, 4};
        int[] result = SwitchArray.swapBorder(input);
        int[] expected = {4, 2, 3, 1};
        assertThat(result).containsExactly(expected);
    }

    @Test
    void whenSwapBorderArrayLengthIs6() {
        int[] input = {1, 2, 3, 4, 5, 6};
        int[] result = SwitchArray.swapBorder(input);
        int[] expected = {6, 2, 3, 4, 5, 1};
        assertThat(result).containsExactly(expected);
    }

    @Test
    void whenSwapBorderArrayLengthIs3() {
        int[] input = {1, 2, 3};
        int[] result = SwitchArray.swapBorder(input);
        int[] expected = {3, 2, 1};
        assertThat(result).containsExactly(expected);
    }

    @Test
    void whenSwapBorderArrayLengthIs1() {
        int[] input = {1};
        int[] result = SwitchArray.swapBorder(input);
        int[] expected = {1};
        assertThat(result).containsExactly(expected);
    }

    @Test
    void whenSwap0to3() {
        int[] input = {1, 2, 3, 4};
        int source = 0;
        int destination = input.length - 1;
        int[] result = SwitchArray.swap(input, source, destination);
        int[] expected = {4, 2, 3, 1};
        assertThat(result).containsExactly(expected);
    }

    @Test
    void whenSwap1to6() {
        int[] input = {1, 2, 3, 4, 5, 6, 7};
        int source = 1;
        int destination = input.length - 1;
        int[] result = SwitchArray.swap(input, source, destination);
        int[] expected = {1, 7, 3, 4, 5, 6, 2};
        assertThat(result).containsExactly(expected);
    }

    @Test
    void whenSwap2to3() {
        int[] input = {1, 2, 3, 4, 5, 6, 7, 8};
        int source = 2;
        int destination = 3;
        int[] result = SwitchArray.swap(input, source, destination);
        int[] expected = {1, 2, 4, 3, 5, 6, 7, 8};
        assertThat(result).containsExactly(expected);
    }

    @Test
    void whenSwap2to8() {
        int[] input = {1, 2, 3, 4, 5, 6, 7, 8, 9};
        int source = 2;
        int destination = input.length - 1;
        int[] result = SwitchArray.swap(input, source, destination);
        int[] expected = {1, 2, 9, 4, 5, 6, 7, 8, 3};
        assertThat(result).containsExactly(expected);
    }
}