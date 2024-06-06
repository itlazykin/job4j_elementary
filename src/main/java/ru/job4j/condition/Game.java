package ru.job4j.condition;

public class Game {
    public static void game(String name) {
        if ("super mario".equals(name)) {
            System.out.println("Start - super mario");
        }
        if ("tanks".equals(name)) {
            System.out.println("Start - tanks");
        }
        if ("tetris".equals(name)) {
            System.out.println("start - tetris");
        }
    }

    public static void main(String[] args) {
        game("tanks");
    }
}
