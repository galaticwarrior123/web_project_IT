package com.example.test4proj.models;

import javax.persistence.*;
import java.sql.Blob;
import java.sql.SQLException;

@Entity
@Table(name = "[user]")
public class user {
    @Id
    @Column(name ="user_id")
    private Long userId;
    private String name;
    @Column(name ="phone_number")
    private String phoneNumber;
    @Column(name ="image_link")
    private String image;
    @Column(name ="pass_word")
    private String passWord;

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    public user(Long userId, String name, String phoneNumber, String image, String passWord) {
        this.userId = userId;
        this.name = name;
        this.phoneNumber = phoneNumber;
        this.image = image;
        this.passWord = passWord;
    }

    public user() {
    }

    @Override
    public String toString() {
        return "user{" +
                "userId=" + userId +
                ", name='" + name + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", image='" + image + '\'' +
                ", passWord='" + passWord + '\'' +
                '}';
    }
}
