package ru.job4j.collections.arrayslist;

public interface SimpleList<T> extends Iterable<T> {
    void add(T value);

    T set(int index, T newValue);

    T remove(int value);

    T get(int index);

    int size();
}
