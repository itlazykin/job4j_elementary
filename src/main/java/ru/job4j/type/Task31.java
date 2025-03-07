package ru.job4j.type;

/**
 * Написать код, который высчитывает разницу между его первой (число сотен)
 * и последней (число единиц) цифрой входящего трехзначного числа,
 * умноженную на его среднюю (число десятков) цифру, и выводит результат в консоль.
 */
public class Task31 {
    public static void difference(int number) {
        int num1, num2, num3;
        num1 = number / 100;
        num2 = number % 100 / 10;
        num3 = number % 10;
        int rsl = (num1 - num3) * num2;
        System.out.println(Math.abs(rsl));
    }

    public static void main(String[] args) {
        difference(235);
    }
}
