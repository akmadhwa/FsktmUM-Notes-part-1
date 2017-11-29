/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package l2_q3;

import java.util.Arrays;

/**
 *
 * @author Azri
 */
public class L2_Q3 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        int[] A = {5, 3, 0, 2, 4, 1, 0, 5, 2, 3, 1, 4};
        
        BucketSort(A);
        

    }
    
    public static void BucketSort(int [] A) {
        
        int maxValue = maxValue(A);
        int n = A.length;
        
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < maxValue+1; j++)
            int[][] B = new int[n][maxValue];
        }
        
        
        
        //Arrays.fill(B, 0);
        
        for (int i=0; i < B.length; i++) {
            
            B[i] = 0;
            
        }
        
        for (int i = 0; i <n; i++) {
            
            //int temp = n * A[i];
            B[n* A[i]] = A[i];
            //B[A[i]]++;
            
            //B[A[i]]++;
        }
        
        int outPos = 0;
        for (int i = 0; i < B.length; i++) {
            //InsertionSort(B);
            for (int j = 0; j < B[i]; j--) {
                A[outPos] = i;
            }
        }
        
        for(int x: A) {
            System.out.print(A[x] + " ");
        }
        
        
    }
    
    public static void InsertionSort(int[] A) {
        
        int temp;
        
        for (int i = 1; i < A.length; i++) {
            for (int j = i; j > 0; j--) {
                if(A[j] < A[j-1]) {
                    temp = A[j];
                    A[j] = A[j-1];
                    A[j-1] = temp;
                }
            }
            
        }

    }
    
    public static int maxValue(int[] A) {
        
        int max = 0;
        
        for(int i=0; i<A.length; i++) {
            if(A[i] > max)
                max = A[i];   
            
        }
        
        return max;
    }
    
}
