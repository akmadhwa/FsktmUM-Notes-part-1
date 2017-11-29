/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package l4_q1;

import java.math.BigInteger;
import java.util.Random;
import java.util.Scanner;

/**
 *
 * @author Azri
 */
public class L4_Q1 {

    /**
     * @param args the command line arguments
     */
    public int root = 3;
    
    public static void main(String[] args) {
        // TODO code application logic here
        
        BigInteger n = new BigInteger(16, new Random(){});
        Random rand = new Random();
        BigInteger m = new BigInteger("4294967296");//2^32
 
        for(int i=0; i<10; i++)
        {
            System.out.print(n+", ");
            BigInteger a = new BigInteger(16, new Random(){});
            BigInteger c = new BigInteger(16, new Random(){});
            n = ((a.multiply(a)).add(c)).mod(m);
        }
        System.out.println("\nEnd of random generated numbers.");
    }
    
    public static void RandomNum(int n BigInteger a, BigInteger c, BigInteger m) {
        
    }
    
}
