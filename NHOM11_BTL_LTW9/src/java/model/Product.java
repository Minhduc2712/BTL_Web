
package model;

import java.io.Serializable;
import java.sql.Date;

public class Product implements Serializable{
    private int id;
    private String name,idCate,image_link,image_list,description;
    private Date date;
    private double price,priceDiscount;
    private int left,sold;
    private double discount;
    private String nameCategory;
    private int status;
    
    public Product(int id, String name, String image_link, double price, double discount) {
        this.id = id;
        this.name = name;
        this.image_link = image_link;
        this.price = price;
        this.discount = discount;
    }

    public Product() {
    }
    
    public Product(int id, String name, String idCate, String image_link, String image_list, String description, Date date, double price, int left, int sold) {
        this.id = id;
        this.name = name;
        this.idCate = idCate;
        this.image_link = image_link;
        this.image_list = image_list;
        this.description = description;
        this.date = date;
        this.price = price;
        this.left = left;
        this.sold = sold;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    

    public String getName() {
        return name;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }
    
    public void setName(String name) {
        this.name = name;
    }

    public String getIdCate() {
        return idCate;
    }

    public void setIdCate(String idCate) {
        this.idCate = idCate;
    }

    public String getImage_link() {
        return image_link;
    }

    public void setImage_link(String image_link) {
        this.image_link = image_link;
    }

    public String getImage_list() {
        return image_list;
    }

    public void setImage_list(String image_list) {
        this.image_list = image_list;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getLeft() {
        return left;
    }

    public void setLeft(int left) {
        this.left = left;
    }

    public int getSold() {
        return sold;
    }

    public void setSold(int sold) {
        this.sold = sold;
    }

    public double getPriceDiscount() {
        return priceDiscount;
    }

    public void setPriceDiscount(double priceDiscount) {
        this.priceDiscount = priceDiscount;
    }

    public String getNameCategory() {
        return nameCategory;
    }

    public void setNameCategory(String nameCategory) {
        this.nameCategory = nameCategory;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
    
}
