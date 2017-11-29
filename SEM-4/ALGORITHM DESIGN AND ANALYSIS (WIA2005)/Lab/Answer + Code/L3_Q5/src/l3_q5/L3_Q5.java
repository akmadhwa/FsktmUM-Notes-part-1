/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package l3_q5;

/**
 *
 * @author Azri
 */
public class L3_Q5 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        // Merge Sort
        
        int[] A = {5, 2, 4, 7, 1, 3, 2, 6};
        mergeSort(A, 0, 7);
        
        for (int i=0; i<A.length; i++){
            System.out.print(A[i] + " ");
        }
    }
    
    public static void merge(int[] A, int p, int q, int r) {
        
        int n1 = q - p + 1;
        int n2 = r - q;
        
        int[] L = new int[n1+1];
        int[] R = new int[n2+1];
        
        for (int i = 1; i < n1; i++) {
            
            L[i] = A[p + i - 1];
        }
        
        for (int j = 1; j < n2; j++) {
            
            R[j] = A[q + j];
        }
        
        L[n1 + 1] = 10;
        R[n2 + 1] = 10;
        
        int i = 1;
        int j = 1;
        
        for (int k = p; k < r; k++) {
            
            if (L[i] <= R[j]){
                A[k] = L[i];
                i = i + 1;
            }
            
            else if (A[k] == R[j]) {
                j = j + 1;
            }
        }
    }
    
    public static void mergeSort(int[] A, int p, int r){
        
        if (p < r) {
            int q = (p + r)/2;
            mergeSort(A, p, q);
            mergeSort(A, q + 1, r);
            merge(A, p, q, r);
        }
        
    }
    
}
