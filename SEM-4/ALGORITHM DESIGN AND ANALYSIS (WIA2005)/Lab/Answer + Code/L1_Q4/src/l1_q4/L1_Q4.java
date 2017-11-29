/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package l1_q4;

import java.util.Random;
import java.util.Scanner;

/**
 *
 * @author Azri
 */
public class L1_Q4 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        

        int max = 100;
        int min = 1;
        int index = 0;

        Random rand = new Random();
        //int randoms;
        int[] A = new int[100];

        for (int i = 0 ; i<=99 ; i++){
            //randoms = ;
            A[i]=rand.nextInt(1000)+1;
            System.out.print(A[i] + " ");
        }
        
        System.out.println("\nArrays generated");
        
        Scanner input = new Scanner(System.in);
        System.out.print("Enter an integer to be searched: ");
        int num = input.nextInt();

        boolean cond = false;
        for (int j = 0 ; j <=99 ; j++){

        if (num == A[j]){
            cond = true;
            index = j;
        }

            }

        System.out.println("");
        
        if (cond == true){
            System.out.println("Success. Integer found at index number: " + index);
        }

        else
            System.out.println("Failed. Number is not in the array");

        }
    
}
