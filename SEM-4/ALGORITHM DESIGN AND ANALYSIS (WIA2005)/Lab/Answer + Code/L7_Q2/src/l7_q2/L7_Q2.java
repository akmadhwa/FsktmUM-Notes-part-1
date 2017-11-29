/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package l7_q2;

/**
 *
 * @author Azri
 */
public class L7_Q2 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        
        
        Stack q = new Stack(5);
 
        // Adds elements {0, 1, 2, 3, 4} to queue
        System.out.println("Pushing elements");
        for (int i=0; i<5; i++)
            q.push(i);

        // Display contents of the queue.
        Stack i = q;
        int length = q.size();
        
        System.out.print("Elements of Stack -");
        for (int j=0; j<length; j++)
            System.out.print(" " + i.array[j]);
        System.out.println("");

        // To remove the head of queue.
        Object removedele = q.pop();
        
        length = q.size();
        i = q;
        
        System.out.println("Popping element - " + removedele);
        System.out.print("Current elements of Stack -");
        for (int j=0; j<length; j++)
            System.out.print(" " + i.array[j]);
        System.out.println("");

        // To view the head of queue
        Object head = q.peek();
        System.out.println("Head of Queue - " + head);

        // Rest all methods of collection interface,
        // Like size and contains can be used with this
        // implementation.
        int size = q.size();
        System.out.println("Size of Queue - " + size);
        
    }
    
}
