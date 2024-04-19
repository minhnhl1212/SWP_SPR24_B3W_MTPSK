package DTO;

import java.util.Date;

/**
 *
 * @author trant
 */
public class News {

    private int newsId;
    private String tittle;
    private String image;
    private Date date;
    private String staff;
    private String description;

    public News(String tittle, String image, Date date, String staff, String description) {
        this.tittle = tittle;
        this.image = image;
        this.date = date;
        this.staff = staff;
        this.description = description;
    }

    public int getNewsId() {
        return newsId;
    }

    public void setNewsId(int newsId) {
        this.newsId = newsId;
    }

    public String getTittle() {
        return tittle;
    }

    public void setTittle(String tittle) {
        this.tittle = tittle;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getStaff() {
        return staff;
    }

    public void setStaff(String staff) {
        this.staff = staff;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
