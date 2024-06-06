package ru.job4j.calculator;

/**
 * Класс для расчета идеального веса для мужчин и женщин.
 */
public class Fit {
    /**
     * Метод для расчета идеального веса для мужчины.
     *
     * @param height рост мужчины в сантиметрах
     * @return идеальный вес мужчины
     * @throws IllegalArgumentException если рост меньше или равен нулю
     */
    public static double calculateManWeight(short height) {
        if (height <= 0) {
            throw new IllegalArgumentException("Height should be greater than zero.");
        }
        return (height - 100) * 1.15;
    }

    /**
     * Метод для расчета идеального веса для женщины.
     *
     * @param height рост женщины в сантиметрах
     * @return идеальный вес женщины
     * @throws IllegalArgumentException если рост меньше или равен нулю
     */
    public static double calculateWomanWeight(short height) {
        if (height <= 0) {
            throw new IllegalArgumentException("Height should be greater than zero.");
        }
        return (height - 110) * 1.15;
    }

    /**
     * Точка входа в программу.
     *
     * @param args аргументы командной строки (не используются)
     */
    public static void main(String[] args) {
        short height = 187;
        double manWeight = Fit.calculateManWeight(height);
        System.out.println("Man 187 is " + manWeight);
        double womanWeight = Fit.calculateWomanWeight(height);
        System.out.println("Woman 187 is " + womanWeight);
    }
}