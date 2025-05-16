package ru.job4j.condition;

import org.junit.Test;

import static org.junit.jupiter.api.Assertions.*;

public class LogicOrTest {
    @Test
    public void whenNumIsNegativeAndOddThanOk() {
        int num = -3;
        boolean rsl = LogicOr.check(num);
        assertTrue(rsl);
    }
}