package ru.job4j.condition;

import org.junit.jupiter.api.Test;

import static org.assertj.core.api.Assertions.assertThat;

class MaxTest {
    @Test
    void whenMax1To2Then2() {
        int left = 1;
        int right = 2;
        int result = Max.max(right, left);
        int expected = 2;
        assertThat(result).isEqualTo(expected);
    }

    @Test
    void whenMax3To2Then3() {
        int left = 3;
        int right = 2;
        int result = Max.max(right, left);
        int expected = 3;
        assertThat(result).isEqualTo(expected);
    }

    @Test
    void whenMax2To2Then2() {
        int left = 2;
        int right = 2;
        int result = Max.max(right, left);
        int expected = 2;
        assertThat(result).isEqualTo(expected);
    }

    @Test
    void whenMax10To20To30Then30() {
        int first = 10;
        int second = 20;
        int third = 30;
        int result = Max.max(first, second, third);
        int expected = 30;
        assertThat(result).isEqualTo(expected);
    }

    @Test
    void whenMax20To30To10Then30() {
        int first = 20;
        int second = 30;
        int third = 10;
        int result = Max.max(first, second, third);
        int expected = 30;
        assertThat(result).isEqualTo(expected);
    }

    @Test
    void whenMax20To30To10To40Then40() {
        int first = 20;
        int second = 30;
        int third = 10;
        int four = 40;
        int result = Max.max(first, second, third, four);
        int expected = 40;
        assertThat(result).isEqualTo(expected);
    }
}