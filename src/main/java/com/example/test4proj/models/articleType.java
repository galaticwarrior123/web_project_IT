package com.example.test4proj.models;

import javax.persistence.*;

@Entity
@Table(name = "[articletype]")
public class articleType {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "article_type_id")
    private int articleTypeId;
    @Column(name = "article_type_name")
    private String articleTypeName;

    public articleType() {
    }

    public articleType(int articleTypeId, String articleTypeName) {
        this.articleTypeId = articleTypeId;
        this.articleTypeName = articleTypeName;
    }

    public int getArticleTypeId() {
        return articleTypeId;
    }

    public void setArticleTypeId(int articleTypeId) {
        this.articleTypeId = articleTypeId;
    }

    public String getArticleTypeName() {
        return articleTypeName;
    }

    public void setArticleTypeName(String articleTypeName) {
        this.articleTypeName = articleTypeName;
    }
}
