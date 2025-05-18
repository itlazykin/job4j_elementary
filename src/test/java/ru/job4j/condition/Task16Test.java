package ru.job4j.condition;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class Task16Test {
    @Test
    void whenNum420ThanNotZero() {
        int num = 420;
        String expected = "Not zero";
        String rsl = Task16.zeroCheck(num);
        assertEquals(expected, rsl);
    }
}