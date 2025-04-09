package ru.job4j.collections.iterator;

import java.util.Iterator;

public class SimpleIterator<T> implements Iterator<T> {
    private final T[] object;
    private int index = 0;

    public SimpleIterator(T[] object) {
        this.object = object;
    }

    @Override
    public boolean hasNext() {
        return index < object.length;
    }

    @Override
    public T next() {
        return object[index++];
    }

    public static void main(String[] args) {
        Integer[] values = {1, 2, 3, 4, 5, 6, 7, 8};
        SimpleIterator<Integer> simpleIterator = new SimpleIterator<>(values);
        while (simpleIterator.hasNext()) {
            Integer i = simpleIterator.next();
            System.out.println(i);
        }
    }
}
