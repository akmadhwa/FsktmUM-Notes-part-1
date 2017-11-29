/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package l1_q5;

import java.util.Scanner;

/**
 *
 * @author Azri
 */
public class L1_Q5 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        Scanner a = new Scanner(System.in);
        
        System.out.print("Enter the n numbers of Fibonacci sequence to be printed: ");
        int n = a.nextInt();
        
        for (int i=1; i<=n; i++) {
            
            System.out.print(fibonacci(i) + " ");
            
        }
        

    }
    
    public static int fibonacci(int n) {
        
        if (n == 0)
            return 0;
        
        else if(n == 1)
            return 1;
        
        else
            return fibonacci(n-1) + fibonacci(n-2);
        
    }
        
}
