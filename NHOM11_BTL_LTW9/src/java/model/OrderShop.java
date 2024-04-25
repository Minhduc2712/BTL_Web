
package model;

import java.io.Serializable;
import java.sql.Date;
import java.sql.Time;

public class OrderShop implements Serializable{
    private int id,idUser;
    private String phone,address,payment,note;
    private Date date;
    private Time time;
    private User user;
    private double totalMoney;

    public OrderShop(int idUser, String phone, String address, String payment, String note, Date date, Time time) {
        this.idUser = idUser;
        this.phone = phone;
        this.address = address;
        this.payment = payment;
        this.note = note;
        this.date = date;
        this.time = time;
    }

    public OrderShop(int id, int idUser, String phone, String address, String payment, String note, Date date, Time time,double totalMoney) {
        this.id = id;
        this.idUser = idUser;
        this.phone = phone;
        this.address = address;
        this.payment = payment;
        this.note = note;
        this.date = date;
        this.time = time;
        this.totalMoney=totalMoney;
    }
    public OrderShop() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPayment() {
        return payment;
    }

    public void setPayment(String payment) {
        this.payment = payment;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Time getTime() {
        return time;
    }

    public void setTime(Time time) {
        this.time = time;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public double getTotalMoney() {
        return totalMoney;
    }

    public void setTotalMoney(double totalMoney) {
        this.totalMoney = totalMoney;
    }
    
}
