package ru.job4j.condition;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class Task20Test {
    @Test
    void thanNum420ThanYes() {
        int num = 420;
        String expected = "Да";
        String rsl = Task20.numCheck(num);
        assertEquals(expected, rsl);
    }

    @Test
    void thanNum421ThanNo() {
        int num = 421;
        String expected = "Нет";
        String rsl = Task20.numCheck(num);
        assertEquals(expected, rsl);
    }
}