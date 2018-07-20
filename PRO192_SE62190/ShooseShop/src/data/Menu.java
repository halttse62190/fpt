/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.util.Scanner;

/**
 *
 * @author lethi
 */
public class Menu {
    public static int getChoice(){
       int choice;
       Scanner sc = new Scanner (System.in);
        System.out.println("Welcome to New Age Store - @ 2017 by <SE62190 - Lê Thị Thu Hà>");
        System.out.println("Select the Option below:");
        System.out.println("1. Add a pair of shoes to the list");
        System.out.println("2. Search a pair of Shoes by Code");
        System.out.println("3. Update a pair of Shoes by Code");
        System.out.println("4. Remove a pair of Shoes by Code");
        System.out.println("5. Print the Shoes list in the ascending order of Model");
        System.out.println("6. Quit");
        choice = MyToys.getIntegerInRange(1, 6, "choice");
       return choice;
    }
}
