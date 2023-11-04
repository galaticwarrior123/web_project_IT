package com.example.test4proj.models;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "[area]")
public class area {
    @Id
    private int area_id;
    private String area_name;

    public int getArea_id() {
        return area_id;
    }

    public void setArea_id(int area_id) {
        this.area_id = area_id;
    }

    public String getArea_name() {
        return area_name;
    }

    public void setArea_name(String area_name) {
        this.area_name = area_name;
    }

    public area(int area_id, String area_name) {
        this.area_id = area_id;
        this.area_name = area_name;
    }

    public area() {
    }

    @Override
    public String toString() {
        return "area{" +
                "area_id=" + area_id +
                ", area_name='" + area_name + '\'' +
                '}';
    }
}
