package DTO;

public class Category {
    private int categoryId;
    private String categoryName;
    private String nameStaff;

    public Category() {
    }

    public Category(int categoryId) {
        this.categoryId = categoryId;
    }    

    public Category(String categoryName, String nameStaff) {
        this.categoryName = categoryName;
        this.nameStaff = nameStaff;
    }     

    public Category(int categoryId, String categoryName) {
        this.categoryId = categoryId;
        this.categoryName = categoryName;
    }

    public Category(int categoryId, String categoryName, String nameStaff) {
        this.categoryId = categoryId;
        this.categoryName = categoryName;
        this.nameStaff = nameStaff;
    }
    
    

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public String getNameStaff() {
        return nameStaff;
    }

    public void setNameStaff(String nameStaff) {
        this.nameStaff = nameStaff;
    }
}
