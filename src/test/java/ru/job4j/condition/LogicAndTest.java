package ru.job4j.condition;

import org.junit.Test;

import static org.junit.jupiter.api.Assertions.*;

public class LogicAndTest {
    @Test
    public void whenNumMinusOneThanFalse() {
        int num = -1;
        boolean rsl = LogicAnd.check(num);
        assertFalse(rsl);
    }

    @Test
    public void whenNumOneThanFalse() {
        int num = 1;
        boolean rsl = LogicAnd.check(num);
        assertFalse(rsl);
    }

    @Test
    public void whenNumTwoThanTrue() {
        int num = 2;
        boolean rsl = LogicAnd.check(num);
        assertTrue(rsl);
    }
}