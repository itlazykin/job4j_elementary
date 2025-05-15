package ru.job4j.condition;

import org.junit.Test;

import static org.junit.jupiter.api.Assertions.*;

public class OddCheckTest {
    @Test
    public void whenNumOddThanTrue() {
        int num = 33;
        boolean rsl = OddCheck.check(num);
        assertTrue(rsl);
    }
}