/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DTO;

/**
 *
 * @author admin
 */
public class Product {
    private int id;
    private String name;
    private String description;
    private int ammount;
    private double price;
    private String brand;
    private String img;
    private boolean is_selling;

    public Product() {
    }

    public Product(int id, String name, String description, int ammount, double price, String brand, String img, boolean is_selling) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.ammount = ammount;
        this.price = price;
        this.brand = brand;
        this.img = img;
        this.is_selling = is_selling;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
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

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public boolean isIs_selling() {
        return is_selling;
    }

    public void setIs_selling(boolean is_selling) {
        this.is_selling = is_selling;
    }
    
}
