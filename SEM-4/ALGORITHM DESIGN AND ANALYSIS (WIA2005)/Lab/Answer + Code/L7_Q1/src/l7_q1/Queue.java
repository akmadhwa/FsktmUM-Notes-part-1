/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package l7_q1;

import java.util.Iterator;
import java.util.NoSuchElementException;

/**
 *
 * @author Azri
 */
public class Queue<Item> {
    
    private Object[] array;
    private int size = 0;
    private int head = 0; // index of the current front item, if one exists
    private int tail = 0; // index of next item to be added

    public Queue(int capacity) {
        array = new Object[capacity];
    }

    public void enqueue(Object item) {
        if (size == array.length) {
            throw new IllegalStateException("Cannot add to full queue");
        }
        array[tail] = item;
        tail = (tail + 1) % array.length;
        size++;
    }

    public Object dequeue() {
        if (size == 0) {
            throw new NoSuchElementException("Cannot remove from empty queue");
        }
        Object item = array[head];
        array[head] = null;
        head = (head + 1) % array.length;
        size--;
        return item;
    }

    public Object peek() {
        if (size == 0) {
            throw new NoSuchElementException("Cannot peek into empty queue");
        }
        return array[size - 1];
    }

    public boolean isEmpty() {
        return size == 0;
    }

    public int size() {
        return size;
    }
    
}
