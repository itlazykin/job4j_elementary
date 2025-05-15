package ru.job4j.condition;

import org.junit.Test;

import static org.junit.jupiter.api.Assertions.*;

public class EvenCheckTest {
    @Test
    public void whenNumEvenThanTrue() {
        int num = 4;
        boolean rsl = EvenCheck.check(num);
        assertTrue(rsl);
    }
}