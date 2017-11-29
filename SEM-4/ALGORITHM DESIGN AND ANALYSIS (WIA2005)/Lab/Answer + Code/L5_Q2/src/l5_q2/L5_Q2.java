/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package l5_q2;

import java.util.Random;

/**
 *
 * @author Azri
 */
public class L5_Q2 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        int[] x = {-8, -5, 1, 5, 7, 11, 13, 18, 21};
        int[] y = {23, 71, 64, 14, 98, 45, 33, 56, 3};
        
        System.out.println("X-axis median: " + randomizedSelect(x, 0, x.length-1, x.length/2));
        System.out.println("Y-axis median: " + randomizedSelect(y, 0, y.length-1, y.length/2));
    }
    
    private static Random random = new Random(System.currentTimeMillis());
    
    public static int randomizedSelect(int[] a, int p, int r, int i) {

        while(true){
                if(p == r){
                        return a[p];
                }
                int q = randomizedPartition(a, p, r);  
                int k = q-p+1;

                if(i == k-1){
                        return a[q];
                }
                else if(i <k){
                        r = q -1;
                }else{
                        i = i - k;
                        p = q + 1;
                }
        }
    }
	
	// (see the book for details about the algorithm)
    public static int randomizedPartition(int[] a, int p, int r) {
        int i = 0;
        if(p < r) {
                i =  p + random.nextInt(r-p);
        }
        
        else {
                i =  r + random.nextInt(p-r);
        }
        swap(a, r, i);
        return partition(a, p, r);  // call the partition method of quicksort.
    }
    
    private static int partition(int[] a, int p, int r) {
        int x = a[r];
        int i = p - 1;
        for(int j = p; j <= r-1; j++){
                if(a[j] <= x){
                        i = i+1;
                        swap(a, i, j);
                }
        }
        swap(a, i+1, r);
        return i+1;
    }

	/**
	 * Method to swap two elements in an array
	 * @param array the array
	 * @param i position of an element
	 * @param j position of another element
	 */
    
    public static void swap(int[] array, int i, int j) {
        int valueI = array[i];
        array[i] = array[j];
        array[j] = valueI;  
    }
}
