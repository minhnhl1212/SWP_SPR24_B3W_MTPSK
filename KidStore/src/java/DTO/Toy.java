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
    private int categoryId;
    private int cartId;
    private int approve;
    private int idCategory;

    public Toy() {
    }

    public Toy(String toyName, String image, double price) {
        this.toyName = toyName;
        this.image = image;
        this.price = price;
    } 

    public Toy(String toyName, String image, double price, String description, int approve, int idCategory) {
        this.toyName = toyName;
        this.image = image;
        this.price = price;
        this.description = description;
        this.approve = approve;
        this.idCategory = idCategory;
    }

    public Toy(int toyId, String toyName, int quantity, double price, String description, int categoryId, int cartId) {
        this.toyId = toyId;
        this.toyName = toyName;
        this.quantity = quantity;
        this.price = price;
        this.description = description;
        this.categoryId = categoryId;
        this.cartId = cartId;
    }

    public Toy(int toyId, String toyName, int quantity, String image, double price, String description, int categoryId, int cartId, int approve) {
        this.toyId = toyId;
        this.toyName = toyName;
        this.quantity = quantity;
        this.image = image;
        this.price = price;
        this.description = description;
        this.categoryId = categoryId;
        this.cartId = cartId;
        this.approve = approve;
    }    

    public Toy(int toyId, String toyName, int quantity, String image, double price, String description, int categoryId, int cartId) {
        this.toyId = toyId;
        this.toyName = toyName;
        this.quantity = quantity;
        this.image = image;
        this.price = price;
        this.description = description;
        this.categoryId = categoryId;
        this.cartId = cartId;
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

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public int getCartId() {
        return cartId;
    }

    public void setCartId(int cartId) {
        this.cartId = cartId;
    }
    
    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getApprove() {
        return approve;
    }

    public void setApprove(int approve) {
        this.approve = approve;
    }

    public int getIdCategory() {
        return idCategory;
    }

    public void setIdCategory(int idCategory) {
        this.idCategory = idCategory;
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
