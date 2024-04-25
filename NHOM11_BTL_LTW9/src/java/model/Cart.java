
package model;

import java.io.Serializable;


public class Cart implements Serializable{
    private int id,idCustomer,idProduct,quantity;
    private double priceBuy;
    private Product product;
    private double total;

    public Cart() {
    }

    public Cart(int id, int idCustomer, int idProduct, int quantity, double priceBuy) {
        this.id = id;
        this.idCustomer = idCustomer;
        this.idProduct = idProduct;
        this.quantity = quantity;
        this.priceBuy = priceBuy;
    }

    public Cart(int idCustomer, int idProduct, int quantity, double priceBuy) {
        this.idCustomer = idCustomer;
        this.idProduct = idProduct;
        this.quantity = quantity;
        this.priceBuy = priceBuy;
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdCustomer() {
        return idCustomer;
    }

    public void setIdCustomer(int idCustomer) {
        this.idCustomer = idCustomer;
    }

    public int getIdProduct() {
        return idProduct;
    }

    public void setIdProduct(int idProduct) {
        this.idProduct = idProduct;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPriceBuy() {
        return priceBuy;
    }

    public void setPriceBuy(double priceBuy) {
        this.priceBuy = priceBuy;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = (double) Math.round(total*100)/100;
    }
    
}
