/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DTO;

import java.util.Date;

/**
 *
 * @author admin
 */
public class Order {
    private int id;
    private int product_id;
    private int ammount;
    private double price;
    private Date selling_date;
    private int account_id;
    private int payment_id;

    public Order() {
    }

    public Order(int id, int product_id, int ammount, double price, Date selling_date, int account_id, int payment_id) {
        this.id = id;
        this.product_id = product_id;
        this.ammount = ammount;
        this.price = price;
        this.selling_date = selling_date;
        this.account_id = account_id;
        this.payment_id = payment_id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public int getAmmount() {
        return ammount;
    }

    public void setAmmount(int ammount) {
        this.ammount = ammount;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public Date getSelling_date() {
        return selling_date;
    }

    public void setSelling_date(Date selling_date) {
        this.selling_date = selling_date;
    }

    public int getAccount_id() {
        return account_id;
    }

    public void setAccount_id(int account_id) {
        this.account_id = account_id;
    }

    public int getPayment_id() {
        return payment_id;
    }

    public void setPayment_id(int payment_id) {
        this.payment_id = payment_id;
    }
    
}
