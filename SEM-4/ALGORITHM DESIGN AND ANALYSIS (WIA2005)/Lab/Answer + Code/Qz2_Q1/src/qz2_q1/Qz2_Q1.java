/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package qz2_q1;

import java.util.Random;

/**
 *
 * @author Azri
 */
public class Qz2_Q1 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        int[] A = {11, 4, 74, 55, 3, 17, 8, 46, 43, 33};
        
        Sort(A, 0, A.length-1);
        
        for (int i=0; i<A.length; i++) {
            
            System.out.print(A[i]+ " ");
        }
    }
    
    public static void Sort (int[] A, int p, int r) {
        
        int q;
        
        if (A[p]<A[r]) {
            
            q = Partition(A, p, r);
            Sort (A, p, q-1);
            Sort (A, q+1, r);
        }
        
    }
    
    public static int Partition (int[] A, int p, int r) {
        
        Random random = new Random();
        
        int rand = random.nextInt(r+1);
        
        int temp = A[r];
        A[r] = A[rand];
        A[rand] = temp;
        
        int x = A[r];
        
        int i = p - 1;
        
        for (int j = p; j < r-1; j++) {
            
            if (A[j] <= x) {
                
                i = i + 1;
                int temp1 = A[i];
                A[i] = A[j];
                A[j] = temp;
                
            }
        }
        
        int temp2 = A[i+1];
        A[i+1] = A[r];
        A[r] = temp;
        
        return i+1;
        
        
    }
    
}
