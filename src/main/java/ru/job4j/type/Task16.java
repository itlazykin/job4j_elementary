package ru.job4j.type;

/**
 *  Написать код, который выводит в консоль 3 предыдущих числа (от входящего). Каждое из 3 чисел нужно вывести на отдельной строке.
 */
public class Task16 {
    public static void decreaseBy2(int number) {
        int a, b, c;
        a = number - 1;
        b = a - 1;
        c = b - 1;
        System.out.println(a);
        System.out.println(b);
        System.out.println(c);
    }
}
