/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

/**
 *
 * @author lethi
 */
public class Shoose {
    private String code;
    private String model;
    private int size;
    private double price;

    public Shoose(String code, String model, int size, double price) {
        this.code = code;
        this.model = model;
        this.size = size;
        this.price = price;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
    
    public void showDetailedInfor(){
        String msg = String.format("|%5s|%-10s|%4d|%4.1f|", code, model, size, price);
        System.out.println(msg);
    }
}
