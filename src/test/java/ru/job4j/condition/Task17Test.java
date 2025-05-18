package ru.job4j.condition;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class Task17Test {
    @Test
    void whenNum420ThenPlus() {
        int num = 420;
        String expected = "Положительное";
        String rsl = Task17.signCheck(num);
        assertEquals(expected, rsl);
    }
}