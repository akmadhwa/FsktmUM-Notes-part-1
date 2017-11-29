/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package l7_q3;

import java.io.PrintStream;
import java.util.Scanner;

/**
 *
 * @author Azri
 */
public class L7_Q3 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        Scanner scan = new Scanner (System.in);   
        /* Creating object of class queueUsingStack */
        queueUsingStacks qus = new queueUsingStacks();            
        
        System.out.println("Enqueuing elements\n");
        for (int i=0; i<5; i++)
            qus.insert(i);
        System.out.print("Elements of Queue - ");
        qus.display();
        System.out.println("");
        
        System.out.println("Dequeuing elements - " + qus.remove());
        System.out.print("Elements of Queue - ");
        qus.display();
        System.out.println("");
        
        System.out.println("Peek at head: " + qus.peek());         
 
         
    }
}
