package ru.job4j.collections.map;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.util.*;

import static org.junit.jupiter.api.Assertions.*;

class MyMapTest {
    private MyMap<String, Integer> map;

    @BeforeEach
    void setUp() {
        map = new MyMap<>();
    }

    @Test
    void whenPutNewKeyThenGetValue() {
        assertTrue(map.put("one", 1));
        assertEquals(1, map.get("one"));
        assertEquals(1, map.size());
    }

    @Test
    void whenPutDuplicateKeyThenValueIsUpdated() {
        assertTrue(map.put("one", 1));
        assertFalse(map.put("one", 2));
        assertEquals(2, map.get("one"));
        assertEquals(1, map.size());
    }

    @Test
    void whenPutNullKeyThenGetValue() {
        assertTrue(map.put(null, 0));
        assertEquals(0, map.get(null));
        assertEquals(1, map.size());
    }

    @Test
    void whenPutNullKeyDuplicateThenValueIsUpdated() {
        assertTrue(map.put(null, 0));
        assertFalse(map.put(null, 1));
        assertEquals(1, map.get(null));
        assertEquals(1, map.size());
    }

    @Test
    void whenGetNonExistentKeyThenReturnNull() {
        assertNull(map.get("nonexistent"));
    }

    @Test
    void whenRemoveKeyThenSizeDecreases() {
        map.put("one", 1);
        assertTrue(map.remove("one"));
        assertNull(map.get("one"));
        assertEquals(0, map.size());
    }

    @Test
    void whenRemoveNonExistentKeyThenReturnFalse() {
        assertFalse(map.remove("nonexistent"));
    }

    @Test
    void whenRemoveNullKeyThenSizeDecreases() {
        map.put(null, 0);
        assertTrue(map.remove(null));
        assertNull(map.get(null));
        assertEquals(0, map.size());
    }

    @Test
    void whenSizeIsCheckedThenCorrectValueReturned() {
        assertEquals(0, map.size());
        map.put("one", 1);
        assertEquals(1, map.size());
        map.put("two", 2);
        assertEquals(2, map.size());
        map.remove("one");
        assertEquals(1, map.size());
    }

    @Test
    void whenIteratingThenAllKeysAreReturned() {
        map.put("one", 1);
        map.put("two", 2);
        map.put("three", 3);
        Iterator<Map.Entry<String, Integer>> iterator = map.entrySet().iterator();
        assertTrue(iterator.hasNext());
        Map.Entry<String, Integer> entry1 = iterator.next();
        assertTrue(iterator.hasNext());
        Map.Entry<String, Integer> entry2 = iterator.next();
        assertTrue(iterator.hasNext());
        Map.Entry<String, Integer> entry3 = iterator.next();
        assertFalse(iterator.hasNext());
        assertEquals(3, map.size());
        assertTrue(containsKey(entry1.getKey()));
        assertTrue(containsKey(entry2.getKey()));
        assertTrue(containsKey(entry3.getKey()));
        assertEquals(3, entry1.getValue());
        assertEquals(2, entry2.getValue());
        assertEquals(1, entry3.getValue());
    }

    @Test
    void whenIteratorIsEmptyThenNoElementReturned() {
        Iterator<Map.Entry<String, Integer>> iterator = map.entrySet().iterator();
        assertFalse(iterator.hasNext());
        assertThrows(NoSuchElementException.class, iterator::next);
    }

    @Test
    void whenMapIsModifiedDuringIterationThenThrowConcurrentModificationException() {
        map.put("one", 1);
        Iterator<Map.Entry<String, Integer>> iterator = map.entrySet().iterator();
        map.put("two", 2);
        assertThrows(ConcurrentModificationException.class, iterator::hasNext);
        assertThrows(ConcurrentModificationException.class, iterator::next);
    }

    @Test
    void whenSizeExceedsLoadFactorThenMapExpands() {
        for (int i = 0; i < 6; i++) {
            map.put("key" + i, i);
        }
        assertEquals(6, map.size());
        for (int i = 0; i < 6; i++) {
            assertEquals(i, map.get("key" + i));
        }
    }

    @Test
    void whenKeysCollideThenCorrectValuesAreStored() {
        String key1 = "key1";
        String key2 = "key2";
        while (!Objects.equals(map.get(key1), map.get(key2))) {
            key2 += "x";
        }
        map.put(key1, 1);
        map.put(key2, 2);
        assertEquals(1, map.get(key1));
        assertEquals(2, map.get(key2));
        assertEquals(2, map.size());
    }

    private boolean containsKey(String key) {
        return map.get(key) != null;
    }
}