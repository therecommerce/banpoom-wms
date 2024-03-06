package com.sgsone.returnrescue.vo;

public class OfferManagementVO extends VoomerangBaseVO {

    private int offer_no;
    private String account_id;
    private String product_id;
    private String sort_type;
    private String payment_method;
    private String donate_receipt;
    private String issuance_sorting;
    private String resident_number1;
    private String resident_number2;
    private String phone_number;
    private int payment_price;
    private int discard_zip;
    private String discard_addr;
    private String discard_addr_detail;
    private String reg_dt;
    private String pay_state;
    private Integer donate_count;
    private Integer discard_count;
    private Integer recovery_count;
    private String category_name;
    private String product_name;
    private String product_count;
    private String pay_dt;

    public int getOffer_no() {
        return offer_no;
    }

    public void setOffer_no(int offer_no) {
        this.offer_no = offer_no;
    }

    @Override
    public String getAccount_id() {
        return account_id;
    }

    @Override
    public void setAccount_id(String account_id) {
        this.account_id = account_id;
    }

    @Override
    public String getProduct_id() {
        return product_id;
    }

    @Override
    public void setProduct_id(String product_id) {
        this.product_id = product_id;
    }

    public String getSort_type() {
        return sort_type;
    }

    public void setSort_type(String sort_type) {
        this.sort_type = sort_type;
    }

    public String getPayment_method() {
        return payment_method;
    }

    public void setPayment_method(String payment_method) {
        this.payment_method = payment_method;
    }

    public String getDonate_receipt() {
        return donate_receipt;
    }

    public void setDonate_receipt(String donate_receipt) {
        this.donate_receipt = donate_receipt;
    }

    public String getIssuance_sorting() {
        return issuance_sorting;
    }

    public void setIssuance_sorting(String issuance_sorting) {
        this.issuance_sorting = issuance_sorting;
    }

    public String getResident_number1() {
        return resident_number1;
    }

    public void setResident_number1(String resident_number1) {
        this.resident_number1 = resident_number1;
    }

    public String getResident_number2() {
        return resident_number2;
    }

    public void setResident_number2(String resident_number2) {
        this.resident_number2 = resident_number2;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    public int getPayment_price() {
        return payment_price;
    }

    public void setPayment_price(int payment_price) {
        this.payment_price = payment_price;
    }

    public int getDiscard_zip() {
        return discard_zip;
    }

    public void setDiscard_zip(int discard_zip) {
        this.discard_zip = discard_zip;
    }

    public String getDiscard_addr() {
        return discard_addr;
    }

    public void setDiscard_addr(String discard_addr) {
        this.discard_addr = discard_addr;
    }

    public String getDiscard_addr_detail() {
        return discard_addr_detail;
    }

    public void setDiscard_addr_detail(String discard_addr_detail) {
        this.discard_addr_detail = discard_addr_detail;
    }

    @Override
    public String getReg_dt() {
        return reg_dt;
    }

    @Override
    public void setReg_dt(String reg_dt) {
        this.reg_dt = reg_dt;
    }

    public String getPay_state() {
        return pay_state;
    }

    public void setPay_state(String pay_state) {
        this.pay_state = pay_state;
    }

    @Override
    public String getCategory_name() {
        return category_name;
    }

    @Override
    public void setCategory_name(String category_name) {
        this.category_name = category_name;
    }

    public Integer getDonate_count() {
        return donate_count;
    }

    public void setDonate_count(Integer donate_count) {
        this.donate_count = donate_count;
    }

    public Integer getDiscard_count() {
        return discard_count;
    }

    public void setDiscard_count(Integer discard_count) {
        this.discard_count = discard_count;
    }

    public Integer getRecovery_count() {
        return recovery_count;
    }

    public void setRecovery_count(Integer recovery_count) {
        this.recovery_count = recovery_count;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public String getProduct_count() {
        return product_count;
    }

    public void setProduct_count(String product_count) {
        this.product_count = product_count;
    }

    public String getPay_dt() {
        return pay_dt;
    }

    public void setPay_dt(String pay_dt) {
        this.pay_dt = pay_dt;
    }
}
