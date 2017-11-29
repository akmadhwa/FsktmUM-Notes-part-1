/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package l7_q4;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

/**
 *
 * @author Azri
 */
public class LinkedList {
    
    private class Node {
        Object item;
        Node next;
        Node previous;
        Node(Object item, Node next, Node previous) {
            this.item = item;
            this.next = next;
            this.previous = previous;
        }
    }

    /**
     * The list itself maintains only a reference to its "header" node.
     * The header is a node that does not store any data.  Its 'next'
     * field points to the first item in the list and its 'previous'
     * field points to the last item.    This makes all insertions and
     * deletions uniform, even at the beginning and the end of the list!
     */
    private Node header = new Node(null, null, null);

    /**
     * The number of items in the list, stored to make size() O(1).
     */
    private int size = 0;

    /**
     * The number of modifications to the list, tracked to ensure
     * that all iterators are fail-safe.
     */
    private long changes = 0;

    /**
     * Constructs a new empty list.
     */
    public LinkedList() {
        header = new Node(null, null, null);
        header.next = header.previous = header;
    }

    /**
     * Returns the number of items in the list.
     */
    public int size() {
        return size;
    }

    /**
     * Inserts <code>item</code> as the new first item.
     */
    public void addFirst(Object item) {
        addBefore(item, header.next);
    }

    /**
     * Inserts <code>item</code> as the new last item.
     */
    public void addLast(Object item) {
        addBefore(item, header);
    }

    /**
     * Inserts <code>item</code> so that after insertion it is the
     * item at the given index position.
     *
     *  @throws IndexOutOfBoundsException if index not in [0,size].
     */
    public void add(int index, Object item) {
        addBefore(item, (index == size ? header : nodeAt(index)));
    }

    /**
     * Removes the item at the given index position.
     *
     *  @throws IndexOutOfBoundsException if index not in [0,size).
     */
    public void remove(int index) {
        remove(nodeAt(index));
    }

    /**
     * Returns the item at the given index position.
     *
     *  @throws IndexOutOfBoundsException if index not in [0,size).
     */
    public Object get(int index) {
        return nodeAt(index).item;
    }

    /**
     * Replaces the item at the given index position with
     * <code>item</code>.
     *
     *  @throws IndexOutOfBoundsException if index not in [0,size).
     */
    public void set(int index, Object item) {
        nodeAt(index).item = item;
    }

    /**
     * Returns the index of the first item ".equals" to the given item.
     */
    public int indexOf(Object item) {
        int index = 0;
        for (Node node = header.next; node != header; node = node.next) {
            if (node.item.equals(item)) {
                return index;
            }
            index++;
        }
        return -1;
    }

    /**
     * Returns a non-removing iterator over this list.
     */
    public Iterator iterator() {
        return new SimpleListIterator();
    }

    private class SimpleListIterator implements Iterator {
        private Node current = header;
        private long changesAtConstructionTime = changes;

        public boolean hasNext() {
            return current.next != header;
        }

        public Object next() {
            if (changes != changesAtConstructionTime) {
                throw new ConcurrentModificationException();
            }
            if (current.next == header) {
                 throw new NoSuchElementException();
            }
            current = current.next;
            return current.item;
        }

        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    //
    // PRIVATE HELPER METHODS
    //

    private Node nodeAt(int index) {
        if (index < 0 || index >= size) {
            throw new IndexOutOfBoundsException(index + " for size " + size);
        }
        Node n = header;
        for (int i = 0; i <= index; i++) {
            n = n.next;
        }
        return n;
    }

    private void addBefore(Object o, Node n) {
        Node newNode = new Node(o, n, n.previous);
        newNode.previous.next = newNode;
        newNode.next.previous = newNode;
        size++;
        changes++;
    }

    private void remove(Node n) {
        if (n == null || n == header) {
            throw new NoSuchElementException();
        }
        n.previous.next = n.next;
        n.next.previous = n.previous;
        size--;
        changes++;
    }
    
}
