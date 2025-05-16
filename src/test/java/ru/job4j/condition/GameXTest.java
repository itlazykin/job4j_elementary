package ru.job4j.condition;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class GameXTest {
    @Test
    void whenTestIsOk() {
        double percent = 10;
        int prize = 500;
        int pay = 15;
        int rsl = GameX.checkGame(percent, prize, pay);
        int expected = 4985;
        assertEquals(expected, rsl);
    }
}