
package model;

import java.io.Serializable;

public class OrderShopDetail implements Serializable{
    private int id,idProduct,idOrderShop,quantity;
    private Product product;
    private OrderShop order;

    public OrderShopDetail(int idProduct, int idOrderShop, int quantity) {
        this.idProduct = idProduct;
        this.idOrderShop = idOrderShop;
        this.quantity = quantity;
    }

    public OrderShopDetail(int id, int idProduct, int idOrderShop, int quantity) {
        this.id = id;
        this.idProduct = idProduct;
        this.idOrderShop = idOrderShop;
        this.quantity = quantity;
    }
    
    public OrderShopDetail() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdProduct() {
        return idProduct;
    }

    public void setIdProduct(int idProduct) {
        this.idProduct = idProduct;
    }

    public int getIdOrderShop() {
        return idOrderShop;
    }

    public void setIdOrderShop(int idOrderShop) {
        this.idOrderShop = idOrderShop;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public OrderShop getOrder() {
        return order;
    }

    public void setOrder(OrderShop order) {
        this.order = order;
    }
    
}
