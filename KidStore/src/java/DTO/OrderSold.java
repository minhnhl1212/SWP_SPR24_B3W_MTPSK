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
public class OrderSold {
    private byte[] image;
    private String toyName;
    private int quantity;
    private String fullName;
    private Date orderDate;
    private double totalPrice;

    public OrderSold(byte[] image, String toyName, int quantity, String fullName, Date orderDate, double totalPrice) {
        this.image = image;
        this.toyName = toyName;
        this.quantity = quantity;
        this.fullName = fullName;
        this.orderDate = orderDate;
        this.totalPrice = totalPrice;
    }

    public OrderSold() {
    }

    public byte[] getImage() {
        return image;
    }

    public void setImage(byte[] image) {
        this.image = image;
    }

    public String getToyName() {
        return toyName;
    }

    public void setToyName(String toyName) {
        this.toyName = toyName;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }
    
}
