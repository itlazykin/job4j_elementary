package ru.job4j.condition;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;
class BonusCupCoffeeTest {

    @Test
    void countCup() {
        int rsl = BonusCupCoffee.countCup(213, 6);
        int expected = 248;
        assertEquals(expected, rsl);
    }
}