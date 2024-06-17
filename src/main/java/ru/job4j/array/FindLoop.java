package ru.job4j.array;

public class FindLoop {
    public static int indexOf(int[] data, int element) {
        int result = -1;
        for (int i = 0; i < data.length; i++) {
            if (data[i] == element) {
                result = i;
                break;
            }
        }
        return result;
    }

    /**
     * Поиск по массиву в указанном диапазоне.
     *
     * @param data    массив чисел
     * @param element элемент, который нужно найти
     * @param start   индекс, с которого начинаем поиск
     * @param finish  индекс, которым заканчиваем поиск
     * @return индекс, или -1,когда нужного индекса нет
     */
    public static int indexInRange(int[] data, int element, int start, int finish) {
        int result = -1;
        for (int i = start; i <= finish; i++) {
            if (data[i] == element) {
                result = i;
                break;
            }
        }
        return result;
    }
}
