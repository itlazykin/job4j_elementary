package ru.job4j.condition;

import org.junit.Test;

import static org.junit.jupiter.api.Assertions.*;

public class GreatThenTest {

    @Test
    public void whenFirstMoreSecond() {
        int first = 420;
        int second = 47;
        boolean rsl = GreatThen.check(first, second);
        assertTrue(rsl);
    }

    @Test
    public void whenFirstLessSecond() {
        int first = 47;
        int second = 420;
        boolean rsl = GreatThen.check(first, second);
        assertFalse(rsl);
    }
}