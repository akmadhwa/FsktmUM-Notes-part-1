/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication21;

/**
 *
 * @author Azri
 */
public class JavaApplication21 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        int[] A = {10, 7, 12, 4,9,13};
        int[] B = new int[A.length];
        
        CountingSort(A, B);
        //for(int i=0; i<B.length; i++)
        //System.out.print(B[i] + " ");
        
    }
    
    
    
    
    public static void CountingSort(int[] A,int[] B){
        
        int max=0,min=A[0];
        //finding min and max value
        for(int i:A){
            max=((i>max)?i:max);
            min=((i<min)?i:min);
        }
        
        //To avoid redundancy,we subtract the min value,later in the end,
        //during assigning the value to B array,
        //we will add the min value back
        for(int i=0;i<A.length;i++){
            A[i] = A[i] - min;
        }
        
        //Create COUNT Array with the range of max and min
	int[] C = new int[max-min+1];
        
        //Create default value  = 0;
	for(int i=0;i<C.length;i++){
		C[i] = 0;
	}
        
        //Store count of each number
	for(int j=0;j<A.length;j++){
		C[A[j]]++;
	}
        System.out.println("\nCounted C :");
        print(C);
        
        //Change C[i] to keep the its actual position
	for(int i=1;i<C.length;i++){
		C[i] = C[i]+C[i-1];
	}
        
       System.out.println("Sum of C");
        print(C);

//        To decrement value of sum and assign value to correct position to B
	for(int j=0;j<A.length;j++){
		B[C[A[j]]-1] = A[j]+min;
		--C[A[j]];
	}
        
        System.out.println("\nSorted Array");
        print(B);
    }
    
    
    
/// A method to print array only
    public static void print(int[] array){
        for(int i:array){
            System.out.print(i+" ");
        }
        System.out.println("");
    }
    
    
}
