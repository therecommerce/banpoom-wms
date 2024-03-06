package com.sgsone.returnrescue.vo;

import java.util.List;

public class ManagerVO extends BaseVO{

    private String account_id;
    private String account_name;
    private String account_tel;
    private String reg_dt;
    private String account_email;
    private boolean dashboard_access;
    private boolean consign_access;
    private boolean consign_warehouse_access;
    private boolean seller_return_access;
    private boolean consign_product_access;
    private boolean consign_delivery_access;
    private boolean consign_return_access;
    private boolean seller_access;
    private boolean seller_product_access;
    private boolean seller_delivery_access;
    private String account_pwd;
    private List<String> managerList;
    private int grade_id;
    public String getAccount_id() {
        return account_id;
    }

    public void setAccount_id(String account_id) {
        this.account_id = account_id;
    }

    public String getAccount_name() {
        return account_name;
    }

    public void setAccount_name(String account_name) {
        this.account_name = account_name;
    }

    public String getAccount_tel() {
        return account_tel;
    }

    public void setAccount_tel(String account_tel) {
        this.account_tel = account_tel;
    }

    public String getReg_dt() {
        return reg_dt;
    }

    public void setReg_dt(String reg_dt) {
        this.reg_dt = reg_dt;
    }

    public String getAccount_email() {
        return account_email;
    }

    public void setAccount_email(String account_email) {
        this.account_email = account_email;
    }

    public boolean isDashboard_access() {
        return dashboard_access;
    }

    public void setDashboard_access(boolean dashboard_access) {
        this.dashboard_access = dashboard_access;
    }

    public boolean isConsign_access() {
        return consign_access;
    }

    public void setConsign_access(boolean consign_access) {
        this.consign_access = consign_access;
    }

    public boolean isConsign_warehouse_access() {
        return consign_warehouse_access;
    }

    public void setConsign_warehouse_access(boolean consign_warehouse_access) {
        this.consign_warehouse_access = consign_warehouse_access;
    }

    public boolean isSeller_return_access() {
        return seller_return_access;
    }

    public void setSeller_return_access(boolean seller_return_access) {
        this.seller_return_access = seller_return_access;
    }

    public boolean isConsign_product_access() {
        return consign_product_access;
    }

    public void setConsign_product_access(boolean consign_product_access) {
        this.consign_product_access = consign_product_access;
    }

    public boolean isConsign_delivery_access() {
        return consign_delivery_access;
    }

    public void setConsign_delivery_access(boolean consign_delivery_access) {
        this.consign_delivery_access = consign_delivery_access;
    }

    public boolean isConsign_return_access() {
        return consign_return_access;
    }

    public void setConsign_return_access(boolean consign_return_access) {
        this.consign_return_access = consign_return_access;
    }

    public boolean isSeller_access() {
        return seller_access;
    }

    public void setSeller_access(boolean seller_access) {
        this.seller_access = seller_access;
    }

    public boolean isSeller_product_access() {
        return seller_product_access;
    }

    public void setSeller_product_access(boolean seller_product_access) {
        this.seller_product_access = seller_product_access;
    }

    public boolean isSeller_delivery_access() {
        return seller_delivery_access;
    }

    public void setSeller_delivery_access(boolean seller_delivery_access) {
        this.seller_delivery_access = seller_delivery_access;
    }

    public String getAccount_pwd() {
        return account_pwd;
    }

    public void setAccount_pwd(String account_pwd) {
        this.account_pwd = account_pwd;
    }

    public int getGrade_id() {
        return grade_id;
    }

    public void setGrade_id(int grade_id) {
        this.grade_id = grade_id;
    }

    public List<String> getManagerList() {
        return managerList;
    }

    public void setManagerList(List<String> managerList) {
        this.managerList = managerList;
    }
}
