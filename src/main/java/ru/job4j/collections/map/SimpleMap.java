package ru.job4j.collections.map;

import java.util.Map;
import java.util.Set;

public interface SimpleMap<K, V> {

    V get(K key);

    boolean put(K key, V value);

    boolean remove(K key);

    int size();

    Set<Map.Entry<K, V>> entrySet();
}
