package com.chill.domain;

public class CartVO {

    private int product_id;
    private String item_name;
    private int item_price;
    private String item_image;
    private int amount;

    public String getItem_image() {
        return item_image;
    }
    public void setItem_image(String item_image) {
        this.item_image = item_image;
    }
    public int getProduct_id() {
        return product_id;
    }
    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }
    public String getItem_name() {
    	return item_name;
    }
    public void setItem_name(String item_name) {
        this.item_name = item_name;
    }
    public int getItem_Price() {
        return item_price;
    }
    public void setItem_Price(int item_price) {
        this.item_price = item_price;
    }
    public int getAmount() {
        return amount;
    }
    public void setAmount(int amount) {
        this.amount = amount;
    }
    
}
