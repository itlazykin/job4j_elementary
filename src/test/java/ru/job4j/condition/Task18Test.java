package ru.job4j.condition;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class Task18Test {
    @Test
    void when100Than99() {
        int num = 100;
        int expected = 99;
        int rsl = Task18.numDecrease(num);
        assertEquals(expected, rsl);
    }

    @Test
    void whenMinus100ThanMinus100() {
        int num = -100;
        int expected = -100;
        int rsl = Task18.numDecrease(num);
        assertEquals(expected, rsl);
    }
}