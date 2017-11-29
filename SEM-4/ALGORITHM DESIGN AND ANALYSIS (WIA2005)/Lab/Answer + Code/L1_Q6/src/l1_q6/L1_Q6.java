/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package l1_q6;

/**
 *
 * @author Azri
 */
public class L1_Q6 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        int[] a = {1, 2, 3};
        int[] b = {5, 11, 9};
        int[] c = {7, 0, 0};
        int[] d = {7, 0, 0, 1};
        
        rotateLeft3(a);
        rotateLeft3(b);
        rotateLeft3(c);
        rotateLeft3(d);
        
    }
    
    public static void rotateLeft3(int[] a)
    {
        int length = a.length;
        int[] newArray = new int[length];
        
        newArray[length-1] = a[0];
//        for (int c=0; c<a.length; c++)
//        {
//            System.out.print(a[c] + " ");
//        }
        
        for (int b=0; b<=length-2;b++)
        {
            newArray[b] = a[b+1];
        }
        
        for (int c=0; c<newArray.length; c++)
        {
            System.out.print(newArray[c] + " ");
        }
        System.out.println("");
        
    }
    
}
