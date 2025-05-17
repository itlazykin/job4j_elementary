package ru.job4j.condition;

import org.junit.jupiter.api.Test;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.core.Is.is;

class ArithmeticActionsTest {
    @Test
    void when5Plus10Equals15ThanAdded() {
        int left = 5;
        int right = 10;
        int rsl = 15;
        String action = ArithmeticActions.selectAction(left, right, rsl);
        assertThat(action, is("added"));
    }
}