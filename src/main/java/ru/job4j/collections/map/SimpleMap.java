package ru.job4j.collections.map;

public interface SimpleMap<K, V> extends Iterable<K> {

    V get(K key);

    boolean put(K key, V value);

    boolean remove(K key);

    int size();
}
