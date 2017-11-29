/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package l7_q1;

import java.util.LinkedList;
import java.util.Queue;

/**
 *
 * @author Azri
 */
public class L7_Q1 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        Queue<Integer> q = new LinkedList<>();
 
        // Adds elements {0, 1, 2, 3, 4} to queue
        System.out.println("Enqueuing elements");
        for (int i=0; i<5; i++)
            q.add(i);

        // Display contents of the queue.
        System.out.println("Elements of Queue - "+q);

        // To remove the head of queue.
        int removedele = q.remove();
        System.out.print("Dequeuing element - " + removedele);
        System.out.println(" - " + q);

        // To view the head of queue
        int head = q.peek();
        System.out.println("Head of Queue - " + head);

        // Rest all methods of collection interface,
        // Like size and contains can be used with this
        // implementation.
        int size = q.size();
        System.out.println("Size of Queue - " + size);
    }
    
}
