package ru.job4j.condition;

import org.junit.Test;

import static org.junit.jupiter.api.Assertions.*;

public class LessThenTest {
    @Test
    public void whenFirstLessSecond() {
        int first = 47;
        int second = 420;
        boolean rsl = LessThen.check(first, second);
        assertTrue(rsl);
    }
}