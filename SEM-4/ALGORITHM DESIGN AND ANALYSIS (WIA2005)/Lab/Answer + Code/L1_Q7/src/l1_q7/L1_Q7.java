/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package l1_q7;

import java.util.Arrays;

/**
 *
 * @author Azri
 */
public class L1_Q7 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        int[] a1 = {1, 2}, a2 = {3, 4};
        int[] b1 = {3, 4}, b2 = {1, 2};
        int[] c1 = {1, 1}, c2 = {1, 2};
        
        System.out.println(Arrays.toString(biggerTwo(a1, a2)));
        System.out.println(Arrays.toString(biggerTwo(b1, b2)));
        System.out.println(Arrays.toString(biggerTwo(c1, c2)));
        
    }
    
    public static int[] biggerTwo(int[] a, int[] b)
    {
        int sum1 = 0;
        int sum2 = 0;
        
        for (int i=0; i<a.length-1; i++)
        {
            sum1 += a[i];
            sum2 += b[i];
        }
        
        if (sum1 > sum2)
            return a;
        else
            return b;
    }
    
}
