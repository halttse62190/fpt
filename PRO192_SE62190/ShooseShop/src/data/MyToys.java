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
public class MyToys {

    public static int getIntegerInRange(int min, int max, String msg) {
        int number;
        Scanner sc = new Scanner(System.in);
        do {
            try {
                System.out.print("Input " + msg + ": ");
                number = Integer.parseInt(sc.nextLine().trim());
                if (number >= min && number <= max) {
                    break;
                }
            } catch (Exception e) {
                System.out.println("Invalid Number");
            }

        } while (true);
        return number;
    }

    public static double getDoubleInRange(double min, double max, String msg) {
        double number;
        Scanner sc = new Scanner(System.in);
        do {
            try {
                System.out.print("Input " + msg + ": ");
                number = Double.parseDouble(sc.nextLine().trim());
                if (number >= min && number <= max) {
                    break;
                }
            } catch (Exception e) {
                System.out.println("Invalid Number");
            }

        } while (true);
        return number;
    }
}
