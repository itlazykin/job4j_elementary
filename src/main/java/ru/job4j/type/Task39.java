package ru.job4j.type;

/**
 * Написать код, который выполняет "сдвиг цифр числа влево по кругу",
 * то есть цифры числа перемещаются на одну позицию влево (единицы - на место десятков, десятки - на место сотен и тд),
 * при этом первая цифра перемещается на место единиц (становится последней). Результат вывести в консоль.
 */
public class Task39 {
    public static void leftCircleShift(int number) {
        int firstDigit = number / 100;
        int lastTwoDigits = number % 100;
        int shiftedNumber = lastTwoDigits * 10 + firstDigit;
        System.out.println(shiftedNumber);
    }

    public static void main(String[] args) {
        leftCircleShift(123);
    }
}
