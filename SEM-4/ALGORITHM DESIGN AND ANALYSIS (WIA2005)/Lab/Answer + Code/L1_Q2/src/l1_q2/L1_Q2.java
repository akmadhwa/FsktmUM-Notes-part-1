/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package l1_q2;

/**
 *
 * @author Azri
 */
public class L1_Q2 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        int[] a = {1, 2, 6};
        int[] b = {6,1,2,3};
        int[] c = {13,6,1,2,3};
        
        System.out.println(firstLast6(a));
        System.out.println(firstLast6(b));
        System.out.println(firstLast6(c));
        
        
        
    }
    
    public static boolean firstLast6(int[] A)
    {
        if (A[0] == 6 || A[A.length-1] == 6)
            return true;
        else
        return false;
        
    }
        
    
    
}
