/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fibonacci;

/**
 *
 * @author nicol
 */
public class Fibonacci {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        int lo = 1;
        int hi = 1;
    System.out.println(lo);
    while (hi< 100) {
        System.out.println(hi);
        hi = lo + hi;
        lo = hi - lo;
    }
    }
    
}
