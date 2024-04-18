package DTO;

import java.util.Date;

/**
 *
 * @author admin
 */
public class OrderDetail {
    private int id;
    private int userId;
    private int toyId;
    private int quantity;
    private double amount;
    private int orderId;

    public OrderDetail() {
    }

    public OrderDetail(int userId, int toyId, int quantity, double amount, int orderId) {
        this.userId = userId;
        this.toyId = toyId;
        this.quantity = quantity;
        this.amount = amount;
        this.orderId = orderId;
    }

    public OrderDetail(int id, int userId, int toyId, int quantity, double amount, int orderId) {
        this.id = id;
        this.userId = userId;
        this.toyId = toyId;
        this.quantity = quantity;
        this.amount = amount;
        this.orderId = orderId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
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

}
