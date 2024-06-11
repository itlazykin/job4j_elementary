package ru.job4j.loop;

public class SeqNumber {
    public static void calc(int number) {
        int hold = 0;
        for (int i = 1; i <= number; i++) {
            hold += i;
            System.out.println(hold);
            if (hold == number) {
                System.out.println("Number = " + number + ". Success");
                break;
            } else if (hold > number) {
                System.out.println("Number = " + number + ". Not possible");
                break;
            }
        }
    }

    public static void main(String[] args) {
        calc(6);
        calc(5);
        calc(3);
    }
}
