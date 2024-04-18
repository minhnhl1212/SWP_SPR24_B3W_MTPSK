package DTO;

public class Image {
    private int imageId;
    private String image;
    private int toyId;

    public Image() {
    }

    public Image(int imageId, String image, int toyId) {
        this.imageId = imageId;
        this.image = image;
        this.toyId = toyId;
    }

    public int getImageId() {
        return imageId;
    }

    public void setImageId(int imageId) {
        this.imageId = imageId;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getToyId() {
        return toyId;
    }

    public void setToyId(int toyId) {
        this.toyId = toyId;
    }
    
}
