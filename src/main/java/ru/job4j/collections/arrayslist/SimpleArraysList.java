package ru.job4j.collections.arrayslist;

import java.util.*;

public class SimpleArraysList<T> implements SimpleList<T> {

    private T[] elementData;

    private int size;

    private int modCount;

    public SimpleArraysList(int capacity) {
        elementData = (T[]) new Object[capacity];
    }

    @Override
    public void add(T value) {
        if (size == elementData.length) {
            grow();
        }
        elementData[size++] = value;
        modCount++;
    }

    private void grow() {
        elementData = elementData.length == 0 ? Arrays.copyOf(elementData, 1)
                : Arrays.copyOf(elementData, elementData.length * 2);
    }

    @Override
    public T set(int index, T newValue) {
        Objects.checkIndex(index, size);
        T oldValue = get(index);
        elementData[index] = newValue;
        return oldValue;
    }

    @Override
    public T remove(int value) {
        Objects.checkIndex(value, size);
        T removedElement = elementData[value];
        System.arraycopy(elementData, value + 1, elementData, value, elementData.length - value - 1);
        elementData[elementData.length - 1] = null;
        modCount++;
        size--;
        return removedElement;
    }

    @Override
    public T get(int index) {
        Objects.checkIndex(index, size);
        return elementData[index];
    }

    @Override
    public int size() {
        return size;
    }

    @Override
    public Iterator<T> iterator() {
        return new Iterator<>() {
            private final int expectedModCount = modCount;
            private int index = 0;

            @Override
            public boolean hasNext() {
                if (expectedModCount != modCount) {
                    throw new ConcurrentModificationException();
                }
                return index < size;
            }

            @Override
            public T next() {
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                return elementData[index++];
            }
        };
    }
}
