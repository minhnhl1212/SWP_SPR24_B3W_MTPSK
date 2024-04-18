package DTO;

import java.util.Date;

/**
 *
 * @author admin
 */
public class OrderDetail {
    private int id;
    private int toyId;
    private int quantity;
    private double amount;
    private int orderId;
    private String warrantyCode;
    public OrderDetail() {
    }

    public OrderDetail(int id, int toyId, int quantity, double amount, int orderId, String warrantyCode) {
        this.id = id;
        this.toyId = toyId;
        this.quantity = quantity;
        this.amount = amount;
        this.orderId = orderId;
        this.warrantyCode = warrantyCode;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getToyId() {
        return toyId;
    }

    public void setToyId(int toyId) {
        this.toyId = toyId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public String getWarrantyCode() {
        return warrantyCode;
    }

    public void setWarrantyCode(String warrantyCode) {
        this.warrantyCode = warrantyCode;
    }

    
}
