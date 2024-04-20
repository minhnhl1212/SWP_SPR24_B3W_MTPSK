package DTO;

import java.util.Date;

/**
 *
 * @author trant
 */
public class OrderHistory {
    
    private int orderDetailId;
    private Date orderDate;
    private String imageToy;
    private String toyName;
    private int quantity;
    private String nameCategory;
    private String description;
    private String status;
    private double price;
    private double orderPrice;
    private double orderAmount;

    public OrderHistory(int orderDetailId, Date orderDate, String imageToy, String toyName, int quantity, String nameCategory, String description, String status, double price, double orderPrice, double orderAmount) {
        this.orderDetailId = orderDetailId;
        this.orderDate = orderDate;
        this.imageToy = imageToy;
        this.toyName = toyName;
        this.quantity = quantity;
        this.nameCategory = nameCategory;
        this.description = description;
        this.status = status;
        this.price = price;
        this.orderPrice = orderPrice;
        this.orderAmount = orderAmount;
    }

    public int getOrderDetailId() {
        return orderDetailId;
    }

    public void setOrderDetailId(int orderDetailId) {
        this.orderDetailId = orderDetailId;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public String getImageToy() {
        return imageToy;
    }

    public void setImageToy(String imageToy) {
        this.imageToy = imageToy;
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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getOrderPrice() {
        return orderPrice;
    }

    public void setOrderPrice(double orderPrice) {
        this.orderPrice = orderPrice;
    }

    public double getOrderAmount() {
        return orderAmount;
    }

    public void setOrderAmount(double orderAmount) {
        this.orderAmount = orderAmount;
    }

    public String getNameCategory() {
        return nameCategory;
    }

    public void setNameCategory(String nameCategory) {
        this.nameCategory = nameCategory;
    }
}
