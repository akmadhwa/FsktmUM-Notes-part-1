/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package l7_q5;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

/**
 *
 * @author Azri
 */
public class CyclicLinkedList {
    
    private Node start ;
    private Node end ;
    public int size ;
 
    /* Constructor */
    public CyclicLinkedList()
    {
        start = null;
        end = null;
        size = 0;
    }
    /* Function to check if list is empty */
    public boolean isEmpty()
    {
        return start == null;
    }
    /* Function to get size of the list */
    public int getSize()
    {
        return size;
    }
    /* Function to insert element at the begining */
    public void insertAtStart(int val)
    {
        Node nptr = new Node(val,null);    
        nptr.setLink(start);
        if(start == null)
        {            
            start = nptr;
            nptr.setLink(start);
            end = start;            
        }
        else
        {
            end.setLink(nptr);
            start = nptr;        
        }
        size++ ;
    }
    /* Function to insert element at end */
    public void insertAtEnd(int val)
    {
        Node nptr = new Node(val,null);    
        nptr.setLink(start);
        if(start == null)
        {            
            start = nptr;
            nptr.setLink(start);
            end = start;            
        }
        else
        {
            end.setLink(nptr);
            end = nptr;            
        }
        size++ ;
    }
    /* Function to insert element at position */
    public void insertAtPos(int val , int pos) 
    {
        Node nptr = new Node(val,null);                
        Node ptr = start;
        pos = pos - 1 ;
        for (int i = 1; i < size - 1; i++) 
        {
            if (i == pos) 
            {
                Node tmp = ptr.getLink() ;
                ptr.setLink( nptr );
                nptr.setLink(tmp);
                break;
            }
            ptr = ptr.getLink();
        }
        size++ ;
    }
    /* Function to delete element at position */
    public void deleteAtPos(int pos)
    {    
        if (size == 1 && pos == 1)
        {
            start = null;
            end = null;
            size = 0;
            return ;
        }        
        if (pos == 1) 
        {
            start = start.getLink();
            end.setLink(start);
            size--; 
            return ;
        }
        if (pos == size) 
        {
            Node s = start;
            Node t = start;
            while (s != end)
            {
                t = s;
                s = s.getLink();
            }
            end = t;
            end.setLink(start);
            size --;
            return;
        }
        Node ptr = start;
        pos = pos - 1 ;
        for (int i = 1; i < size - 1; i++) 
        {
            if (i == pos) 
            {
                Node tmp = ptr.getLink();
                tmp = tmp.getLink();
                ptr.setLink(tmp);
                break;
            }
            ptr = ptr.getLink();
        }
        size-- ;
    }
    /* Function to display contents */
    public void display()
    {
        System.out.print("\nCircular Singly Linked List = ");
        Node ptr = start;
        if (size == 0) 
        {
            System.out.print("empty\n");
            return;
        }
        if (start.getLink() == start) 
        {
            System.out.print(start.getData()+ "->"+ptr.getData()+ "\n");
            return;
        }
        System.out.print(start.getData()+ "->");
        ptr = start.getLink();
        while (ptr.getLink() != start) 
        {
            System.out.print(ptr.getData()+ "->");
            ptr = ptr.getLink();
        }
        System.out.print(ptr.getData()+ "->");
        ptr = ptr.getLink();
        System.out.print(ptr.getData()+ "\n");
    }
    
}
