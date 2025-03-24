package ru.job4j.leetcode;

/**
 * 9. Palindrome Number
 * Given an integer x, return true if x is a palindrome, and false otherwise.
 */
public class PalindromeNumber {
    public static boolean isPalindrome(int x) {
        if ((x < 0) || (x % 10 == 0 && x != 0)) {
            return false;
        }
        if (x < 10) {
            return true;
        }
        int reversed = 0;
        int original = x;
        while (x > reversed) {
            reversed = reversed * 10 + x % 10;
            x = x / 10;
        }
        return x == reversed || x == reversed / 10;
    }
}
