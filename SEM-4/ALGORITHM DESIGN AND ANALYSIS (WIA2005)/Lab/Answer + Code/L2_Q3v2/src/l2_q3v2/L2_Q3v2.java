/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package l2_q3v2;

/**
 *
 * @author Azri
 */
public class L2_Q3v2 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        int i, a[] = {3, 6, 20, 0, 5, 1, 8, 4, 3, 1};
	    
	    System.out.println("Before sorting:\n");
	    for(i = 0; i < a.length; ++i)
	        System.out.print(a[i] + " ");
	    
	    bucketSort(a);
	    
	    System.out.println("\n\nAfter sorting:\n");
	    for(i = 0; i < a.length; ++i)
	        System.out.print(a[i] + " ");	
                
    }
    
    public static void bucketSort(int a[]) {
	    int i, j, k;
	    
            int size = maxValue(a);
            
	    int buckets[] = new int[size+1];
	    
	    for(i = 0; i < size; ++i) {
	        buckets[i] = 0;
            }
    
	    for(i = 0; i < a.length; i++){
	        buckets[a[i]]++;
            }
	    
            k = 0;
	    for(i = 0; i < buckets.length; i++) {
	        for(j = 0; j < buckets[i]; j++) {
	            a[k++] = i;
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
