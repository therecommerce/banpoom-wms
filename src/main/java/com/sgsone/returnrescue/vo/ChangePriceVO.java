package com.sgsone.returnrescue.vo;

public class ChangePriceVO {
    private String product_id;
    private String change_dt;
    private String change_type;
    private int change_price;
    private int change_percent;

    public String getProduct_id() {
        return product_id;
    }

    public void setProduct_id(String product_id) {
        this.product_id = product_id;
    }

    public String getChange_dt() {
        return change_dt;
    }

    public void setChange_dt(String change_dt) {
        this.change_dt = change_dt;
    }

    public String getChange_type() {
        return change_type;
    }

    public void setChange_type(String change_type) {
        this.change_type = change_type;
    }

    public int getChange_price() {
        return change_price;
    }

    public void setChange_price(int change_price) {
        this.change_price = change_price;
    }

    public int getChange_percent() {
        return change_percent;
    }

    public void setChange_percent(int change_percent) {
        this.change_percent = change_percent;
    }
}
