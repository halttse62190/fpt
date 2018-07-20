/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shooseshop;

import data.Brand;
import data.Menu;
import java.util.Scanner;

/**
 *
 * @author lethi
 */
public class ShooseShop {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        Brand prac = new Brand();
        String anw;
        int choice;
        do {
            choice = Menu.getChoice();
            switch (choice) {
                case 1:
                    do {
                        prac.addAShoose();
                        System.out.println("Do you want to contimue? (Y/N)");
                        anw = sc.nextLine().trim().toUpperCase();

                    } while (anw.equalsIgnoreCase("Y"));
                    break;
                case 2:
                    do {
                        prac.searchAPairShooseByCode();
                        System.out.println("Do you want to contimue? (Y/N)");
                        anw = sc.nextLine().trim().toUpperCase();
                    } while (anw.equalsIgnoreCase("Y"));
                    break;
                case 3:
                    do {
                        prac.updateShoosebyCode();
                        System.out.println("Do you want to contimue? (Y/N)");
                        anw = sc.nextLine().trim().toUpperCase();
                    } while (anw.equalsIgnoreCase("Y"));
                    break;
                case 4:
                    do {
                        prac.removeShooseByCode();
                        System.out.println("Do you want to contimue? (Y/N)");
                        anw = sc.nextLine().trim().toUpperCase();
                    } while (anw.equalsIgnoreCase("Y"));
                    break;
                case 5:
                    prac.printListShoose();
                    break;
                case 6:
                    System.out.println("Good bye!");
            }
        } while (choice > 0 && choice < 6);
    }

}
