package DTO;

/**
 *
 * @author trant
 */
public class News {
    
    private int newsId;
    private String description;
    private String image;
    private String name;

    public News() {
    }
    
    public News(String description, String image, String name) {
        this.description = description;
        this.image = image;
        this.name = name;
    }  

    public News(int newsId, String description, String image, String name) {
        this.newsId = newsId;
        this.description = description;
        this.image = image;
        this.name = name;
    }

    public int getNewsId() {
        return newsId;
    }

    public void setNewsId(int newsId) {
        this.newsId = newsId;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    
}
