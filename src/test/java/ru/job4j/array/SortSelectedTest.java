package ru.job4j.array;

import org.junit.jupiter.api.Test;
import static org.assertj.core.api.Assertions.assertThat;

public class SortSelectedTest {
    @Test
    public void whenSort34125Than12345() {
        int[] data = new int[] {3, 4, 1, 2, 5};
        int[] result = SortSelected.sort(data);
        int[] expected = new int[] {1, 2, 3, 4, 5};
        assertThat(result).containsExactly(expected);
    }

    @Test
    public void whenSort72495Than24579() {
        int[] data = new int[] {7, 2, 4, 9, 5};
        int[] result = SortSelected.sort(data);
        int[] expected = new int[] {2, 4, 5, 7, 9};
        assertThat(result).containsExactly(expected);
    }

    @Test
    public void whenSort321Than123() {
        int[] data = new int[] {3, 2, 1};
        int[] result = SortSelected.sort(data);
        int[] expected = new int[] {1, 2, 3};
        assertThat(result).containsExactly(expected);
    }
}