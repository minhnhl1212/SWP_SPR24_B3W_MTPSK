package DTO;


/**
 *
 * @author admin
 */
public class Toy {
    private int toyId;
    private String toyName;
    private int quantity;
    private String image;
    private double price;
    private String description;
    private int approve;
    private int categoryId;
    private double discount;
    private int warranty_time;
    private String nameStaff;

    public Toy() {
    }

    public Toy(int toyId) {
        this.toyId = toyId;
    }        

    public Toy(String toyName, String image, double price, double discount) {
        this.toyName = toyName;
        this.image = image;
        this.price = price;
        this.discount = discount;
    } 

    public Toy(String toyName, String image, double price, String description, int approve, int categoryId, double discount, int warranty_time) {
        this.toyName = toyName;
        this.image = image;
        this.price = price;
        this.description = description;
        this.approve = approve;
        this.categoryId = categoryId;
        this.discount = discount;
        this.warranty_time = warranty_time;
    }       

    public Toy(String toyName, String image, double price, String description, int approve, int categoryId, double discount, int warranty_time, String nameStaff) {
        this.toyName = toyName;
        this.image = image;
        this.price = price;
        this.description = description;
        this.approve = approve;
        this.categoryId = categoryId;
        this.discount = discount;
        this.warranty_time = warranty_time;
        this.nameStaff = nameStaff;
    }
    
    

    public Toy(String toyName, String image, double price, String description, int approve, int categoryId, double discount) {
        this.toyName = toyName;
        this.image = image;
        this.price = price;
        this.description = description;
        this.approve = approve;
        this.categoryId = categoryId;
        this.discount = discount;
    }

    public Toy(int toyId, String toyName, int quantity, double price, String description, int categoryId, double discount) {
        this.toyId = toyId;
        this.toyName = toyName;
        this.quantity = quantity;
        this.price = price;
        this.description = description;
        this.categoryId = categoryId;
        this.discount = discount;
        
    }

    public Toy(int toyId, String toyName, int quantity, String image, double price, String description, int categoryId, int approve, double discount) {
        this.toyId = toyId;
        this.toyName = toyName;
        this.quantity = quantity;
        this.image = image;
        this.price = price;
        this.description = description;
        this.categoryId = categoryId; 
        this.approve = approve;
        this.discount = discount;
    }    

    public Toy(int toyId, String toyName, int quantity, String image, double price, String description, int categoryId, double discount) {
        this.toyId = toyId;
        this.toyName = toyName;
        this.quantity = quantity;
        this.image = image;
        this.price = price;
        this.description = description;
        this.categoryId = categoryId;
        this.discount = discount;
    }
    
    

    public Toy(int toyId, String toyName, int quantity, String image, double price, String description, int approve, int categoryId, double discount, int warranty_time) {
        this.toyId = toyId;
        this.toyName = toyName;
        this.quantity = quantity;
        this.image = image;
        this.price = price;
        this.description = description;
        this.approve = approve;
        this.categoryId = categoryId;
        this.discount = discount;
        this.warranty_time = warranty_time;
    }        

    public Toy(int toyId, String toyName, int quantity, String image, double price, String description, int approve, int categoryId, double discount, int warranty_time, String nameStaff) {
        this.toyId = toyId;
        this.toyName = toyName;
        this.quantity = quantity;
        this.image = image;
        this.price = price;
        this.description = description;
        this.approve = approve;
        this.categoryId = categoryId;
        this.discount = discount;
        this.warranty_time = warranty_time;
        this.nameStaff = nameStaff;
    }        

    public int getToyId() {
        return toyId;
    }

    public void setToyId(int toyId) {
        this.toyId = toyId;
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

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getApprove() {
        return approve;
    }

    public void setApprove(int approve) {
        this.approve = approve;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    public int getWarranty_time() {
        return warranty_time;
    }

    public void setWarranty_time(int warranty_time) {
        this.warranty_time = warranty_time;
    }

    public String getNameStaff() {
        return nameStaff;
    }

    public void setNameStaff(String nameStaff) {
        this.nameStaff = nameStaff;
    }
    
    

    

    @Override
    public int hashCode() {
        int hash = 5;
        hash = 71 * hash + this.toyId;
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Toy other = (Toy) obj;
        if (this.toyId != other.toyId) {
            return false;
        }
        return true;
    }
    
}
