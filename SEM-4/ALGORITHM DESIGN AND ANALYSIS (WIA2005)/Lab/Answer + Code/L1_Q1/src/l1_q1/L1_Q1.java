/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package l1_q1;

/**
 *
 * @author Azri
 */
public class L1_Q1 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        int[] a = {1, 2, 3};
        int[] b = {5, 11, 2};
        int[] c = {7, 0, 0};
        
        System.out.println(sum3(a));
        System.out.println(sum3(b));
        System.out.println(sum3(c));
        
        
        
    }
    
    public static int sum3(int[] A)
    {
        int sum=0;
        for (int i = 0; i< A.length ; i++)
            sum += A[i];
     return sum;
        
    }
        
    
    
}
