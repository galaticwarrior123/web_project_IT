package com.example.test4proj.models;

import javax.persistence.*;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name = "article")
public class article {
    @Id
    @Column(name = "article_id")
//    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long articleId;

    @Column(name = "Subject")
    @NotNull
    @NotBlank(message = "Subject cannot be null")
    @Size(min = 3,max = 100)
    private String subject;
    @Column(name = "area_id")
    private int areaId;
    private String location;
    private String description;
    @Min(0)
    private Long price;
    @Column(name = "user_id")
    private Long userId;
    @Column(name = "article_type_id")
    private int articleTypeId;
    private String images;

    public article(Long articleId, String subject, int areaId, String location, String description, Long price, Long userId, int articleTypeId, String images) {
        this.articleId = articleId;
        this.subject = subject;
        this.areaId = areaId;
        this.location = location;
        this.description = description;
        this.price = price;
        this.userId = userId;
        this.articleTypeId = articleTypeId;
        this.images = images;
    }

    public article(String subject, int areaId, String location, String description, Long price, Long userId, int articleTypeId, String images) {
        this.subject = subject;
        this.areaId = areaId;
        this.location = location;
        this.description = description;
        this.price = price;
        this.userId = userId;
        this.articleTypeId = articleTypeId;
        this.images = images;
    }

    public article() {
    }

    public Long getArticleId() {
        return articleId;
    }

    public void setArticleId(Long articleId) {
        this.articleId = articleId;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public int getAreaId() {
        return areaId;
    }

    public void setAreaId(int area_id) {
        this.areaId = area_id;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Long getPrice() {
        return price;
    }

    public void setPrice(Long price) {
        this.price = price;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long user_id) {
        this.userId = user_id;
    }

    public int getArticleTypeId() {
        return articleTypeId;
    }

    public void setArticleTypeId(int article_type_id) {
        this.articleTypeId = article_type_id;
    }

    public String getImages() {
        return images;
    }

    public void setImages(String images) {
        this.images = images;
    }

}
