package ru.job4j.collections.map;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;

public class MyMap<K, V> implements SimpleMap<K, V> {

    private static final float LOAD_FACTOR = 0.75F;
    private int capacity = 8;
    private int count = 0;
    private int modCount = 0;
    private MapEntry<K, V>[] table = new MapEntry[capacity];

    @Override
    public V get(K key) {
        int index = getIndex(key);
        for (MapEntry<K, V> entry = table[index]; entry != null; entry = entry.next) {
            if ((key == null && entry.key == null) || (key != null && key.equals(entry.key))) {
                return entry.value;
            }
        }
        return null;
    }

    @Override
    public boolean put(K key, V value) {
        if (LOAD_FACTOR * capacity <= count) {
            expand();
        }
        int index = getIndex(key);
        for (MapEntry<K, V> entry = table[index]; entry != null; entry = entry.next) {
            if ((key == null && entry.key == null) || (key != null && key.equals(entry.key))) {
                entry.value = value;
                modCount++;
                return false;
            }
        }
        MapEntry<K, V> newEntry = new MapEntry<>(key, value);
        newEntry.next = table[index];
        table[index] = newEntry;
        count++;
        modCount++;
        return true;
    }

    @Override
    public boolean remove(K key) {
        int index = getIndex(key);
        MapEntry<K, V> prev = null;
        for (MapEntry<K, V> entry = table[index]; entry != null; prev = entry, entry = entry.next) {
            if ((key == null && entry.key == null) || (key != null && key.equals(entry.key))) {
                if (prev == null) {
                    table[index] = entry.next;
                } else {
                    prev.next = entry.next;
                }
                count--;
                modCount++;
                return true;
            }
        }
        return false;
    }

    @Override
    public int size() {
        return count;
    }

    @Override
    public Iterator<K> iterator() {
        return new Iterator<>() {
            private int currentBucket = 0;
            private MapEntry<K, V> currentEntry = null;
            private int expectedModCount = modCount;

            private void advanceToNextEntry() {
                while (currentBucket < table.length && currentEntry == null) {
                    currentEntry = table[currentBucket++];
                }
            }

            @Override
            public boolean hasNext() {
                if (modCount != expectedModCount) {
                    throw new ConcurrentModificationException();
                }
                if (currentEntry == null) {
                    advanceToNextEntry();
                }
                return currentEntry != null;
            }

            @Override
            public K next() {
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }

                K key = currentEntry.key;
                currentEntry = currentEntry.next;
                advanceToNextEntry();
                return key;
            }
        };
    }

    private int hash(int hashCode) {
        return hashCode ^ (hashCode >>> 16);
    }

    private int indexFor(int hash) {
        return hash & (table.length - 1);
    }

    private int getIndex(K key) {
        return indexFor(hash(Objects.hashCode(key)));
    }

    private void expand() {
        int newCapacity = capacity * 2;
        MapEntry<K, V>[] newTable = new MapEntry[newCapacity];
        for (MapEntry<K, V> kvMapEntry : table) {
            MapEntry<K, V> entry = kvMapEntry;
            while (entry != null) {
                MapEntry<K, V> next = entry.next;
                int newIndex = indexFor(hash(Objects.hashCode(entry.key)));
                entry.next = newTable[newIndex];
                newTable[newIndex] = entry;
                entry = next;
            }
        }
        table = newTable;
        capacity = newCapacity;
    }

    private static class MapEntry<K, V> {
        K key;
        V value;
        MapEntry<K, V> next;

        public MapEntry(K key, V value) {
            this.key = key;
            this.value = value;
            this.next = null;
        }
    }
}
