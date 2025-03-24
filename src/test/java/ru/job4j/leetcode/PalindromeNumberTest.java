package ru.job4j.leetcode;

import org.junit.jupiter.api.Test;

import static org.assertj.core.api.Assertions.*;

class PalindromeNumberTest {
    @Test
    void when121ThanOk() {
        int num = 121;
        boolean rsl = PalindromeNumber.isPalindrome(num);
        assertThat(rsl).isTrue();
    }

    @Test
    void when1231ThanOk() {
        int num = 1231;
        boolean rsl = PalindromeNumber.isPalindrome(num);
        assertThat(rsl).isFalse();
    }
}