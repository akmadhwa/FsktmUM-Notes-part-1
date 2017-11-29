/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package l7_q3;

import java.util.NoSuchElementException;
import java.util.Stack;


/**
 *
 * @author Azri
 */
public class queueUsingStacks {
    
    Stack<Integer> s ;
    Stack<Integer> tmp ;
 
    /* Constructor */
    public queueUsingStacks()
    {
        s = new Stack<Integer>();
        tmp = new Stack<Integer>();
    }
    /*  Function to insert an element to the queue */
    public void insert(int data)
    {
        /* if no element is present in stack s then
         * push the new element to stack s */         
        if (s.size() == 0)
            s.push(data);
        else
        {   
            /* if elements are present in stack s then
             * pop all the elements from stack s and
             * push them to stack tmp  */        
            int l = s.size();
            for (int i = 0; i < l; i++)
                tmp.push(s.pop());                   
            /* push the new element to stack s */             
            s.push(data);            
            /* pop all elements from stack tmp and
             * push them to stack s */             
            for (int i = 0; i < l; i++)
                s.push(tmp.pop());                   
        }
    }    
    /*  Function to remove front element from the queue */
    public int remove()
    {
        if (s.size() == 0)
            throw new NoSuchElementException("Underflow Exception");            
        return s.pop();
    }    
    /*  Function to check the front element of the queue */
    public int peek()
    {
        if (s.size() == 0)
            throw new NoSuchElementException("Underflow Exception");            
        return s.peek();
    }        
    /*  Function to check if queue is empty */
    public boolean isEmpty()
    {
        return s.size() == 0 ;
    }    
    /*  Function to get the size of the queue */
    public int getSize()
    {
        return s.size();
    }    
    /*  Function to display the status of the queue */
    public void display()
    {
        System.out.print("\nQueue = ");
        int l = getSize();
        if (l == 0)
            System.out.print("Empty\n");
        else
        {
            /* Iterator wont return for stack in order */            
            for (int i = l - 1; i >= 0; i--)
                System.out.print(s.get(i)+" ");                
            System.out.println();
        }
    }
    
}
