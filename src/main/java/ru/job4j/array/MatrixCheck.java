package ru.job4j.array;

public class MatrixCheck {
    /**
     * Метод проверяет то, что строка в двухмерном массиве целиком заполнена символом 'X'.
     * При этом в массиве могут содержаться только символ пробела ' ' и X - 'X'.
     *
     * @param board массив.
     * @param row   строка.
     * @return true - если строка заполнена Х.
     */
    public static boolean monoHorizontal(char[][] board, int row) {
        boolean result = true;
        for (int i = 0; i < board.length; i++) {
            if (board[row][i] != 'X') {
                result = false;
                break;
            }
        }
        return result;
    }

    /**
     * Метод проверяет то, что колонка в двухмерном массиве целиком заполнена символом 'X'.
     * При этом в массиве могут содержаться только символ пробела ' ' и X - 'X'.
     *
     * @param board  массив
     * @param column колонка
     * @return true - если колонка заполнена Х.
     */
    public static boolean monoVertical(char[][] board, int column) {
        boolean result = true;
        for (int i = 0; i < board.length; i++) {
            if (board[i][column] == ' ') {
                result = false;
                break;
            }
        }
        return result;
    }
}
