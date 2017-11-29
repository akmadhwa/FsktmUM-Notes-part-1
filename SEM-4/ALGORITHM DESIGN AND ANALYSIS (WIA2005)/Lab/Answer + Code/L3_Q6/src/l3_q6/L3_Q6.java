/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package l3_q6;

/**
 *
 * @author Azri
 */
public class L3_Q6 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        int[] a = {6, 10, 13, 5, 8, 3, 2, 11};
        
        quickSort(a, 0, a.length-1);
        
        for (int i=0; i<a.length; i++){
            System.out.print(a[i] + " ");
        }
    }
    
    public static int partition(int arr[], int left, int right)
    {
        int i = left, j = right;
        int tmp;
        int pivot = arr[(left + right) / 2];
     
        while (i <= j) {
            while (arr[i] < pivot)
                  i++;
            while (arr[j] > pivot)
                  j--;
            if (i <= j) {
                  tmp = arr[i];
                  arr[i] = arr[j];
                  arr[j] = tmp;
                  i++;
                  j--;
            }
        }
     
        return i;
    }
 
    public static void quickSort(int arr[], int left, int right) {
        int index = partition(arr, left, right);
        if (left < index - 1)
            quickSort(arr, left, index - 1);
        if (index < right)
            quickSort(arr, index, right);
}
    
    public static void swap(int[] array, int i, int j) {
        int valueI = array[i];
        array[i] = array[j];
        array[j] = valueI;  
    }
}
