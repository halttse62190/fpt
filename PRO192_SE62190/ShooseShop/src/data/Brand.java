/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.util.Map;
import java.util.Scanner;
import java.util.TreeMap;

/**
 *
 * @author lethi
 */
public class Brand {

    private Map<String, Shoose> shooses = new TreeMap<>();

    public void addAShoose() {
        Scanner sc = new Scanner(System.in);
        String code, model;
        int size;
        double price;
        System.out.println("Add a new pair of shoose");
        boolean existedCode;
        do {
            System.out.print("Input the Code:");
            code = sc.nextLine().trim().toUpperCase();
            if (shooses.containsKey(code)) {
                System.out.println("Duplicated Code!");
                existedCode = true;
            } else {
                existedCode = false;
            }
        } while (existedCode == true);
        System.out.print("Input the model:");
        model = sc.nextLine().trim();
        size = MyToys.getIntegerInRange(30, 50, "size of shoose [30-50]");
        price = MyToys.getDoubleInRange(0.1, 99999999, "price of shoose");
        shooses.put(code, new Shoose(code, model, size, price));
        System.out.println("The shoose has added successfully!!!");

    }

    public void searchAPairShooseByCode() {
        if (shooses.isEmpty()) {
            System.out.println("List is empty!");
            return;
        }
        Scanner sc = new Scanner(System.in);
        String code;
        System.out.print("Input the code of Shoose you want to search: ");
        code = sc.nextLine().trim().toUpperCase();
        if (shooses.get(code) == null) {
            System.out.println("Not found");
            return;
        }
        if (shooses.get(code) != null) {
            System.out.println("Your Shoose you want to search by Code: " + code);
            shooses.get(code).showDetailedInfor();
        }
    }

    public void removeShooseByCode() {
        if (shooses.isEmpty()) {
            System.out.println("List is empty!");
            return;
        }
        Scanner sc = new Scanner(System.in);
        String code;
        System.out.print("Input the code of Shoose you want to remove: ");
        code = sc.nextLine().trim().toUpperCase();
        if (shooses.get(code) == null) {
            System.out.println("Not found");
            return;
        }
       
        shooses.remove(code);
        System.out.println("Removed successfully!");
    }

    public void updateShoosebyCode() {
        if (shooses.isEmpty()) {
            System.out.println("List is empty!");
            return;
        }
        Scanner sc = new Scanner(System.in);
        String code, model;
        int size;
        double price;
        System.out.print("Input code of shoose you want to update: ");
        code = sc.nextLine().trim().toUpperCase();
        if (shooses.get(code) == null) {
            System.out.println("Not found");
            return;
        }
        if (shooses.get(code) != null) {
            Shoose that = shooses.get(code);
            System.out.println("Before updating :");
            shooses.get(code).showDetailedInfor();
            System.out.print("Input new model:");
            model = sc.nextLine().trim();
            that.setModel(model);
            size = MyToys.getIntegerInRange(30, 50, "new size of shoose [30-50]");
            that.setSize(size);
            price = MyToys.getDoubleInRange(0.1, 99999999, "new price of shoose");
            that.setPrice(price);
            System.out.println("After updating: ");
            that.showDetailedInfor();
        }
    }

    public void printListShoose() {
        if (shooses.isEmpty()) {
            System.out.println("List Empty");
            return;
        }
        for (Shoose x : shooses.values()) {
            x.showDetailedInfor();
        }
    }
}
