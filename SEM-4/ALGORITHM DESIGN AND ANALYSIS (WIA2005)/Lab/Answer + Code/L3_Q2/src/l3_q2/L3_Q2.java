/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package l3_q2;

import java.util.Scanner;

/**
 *
 * @author Azri
 */
public class L3_Q2 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        // Powering a number
        
        Scanner s = new Scanner(System.in);
        
        System.out.print("Insert a number: ");
        int a = s.nextInt();
        System.out.print("Insert the power to the number: ");
        int n = s.nextInt();
        
        System.out.println("Result: " + powerNumber(a, n));
        
    }
    
    public static int powerNumber(int a, int n) {
        
        if (n%2 == 0)   
            return (int) Math.pow((Math.pow(a, n/2)), 2);
        else
            return (int) Math.pow((Math.pow(a, (n-1)/2)), 2) * a;
    }
    
}
