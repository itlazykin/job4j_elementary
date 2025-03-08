package ru.job4j.type;

/**
 * Написать код, который выполняет "линейный сдвиг числа влево",
 * то есть цифры числа перемещаются на одну позицию влево (единицы - на место десятков, десятки - на место сотен и тд),
 * при этом первая цифра удаляется из числа, а на место единиц записывается ноль. Результат вывести в консоль.
 */
public class Task38 {
    public static void leftShift(int number) {
        int shiftedNumber = (number % 1000) * 10;
        System.out.println(shiftedNumber);
    }
}
