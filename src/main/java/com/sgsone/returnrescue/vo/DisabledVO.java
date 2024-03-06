package com.sgsone.returnrescue.vo;

public class DisabledVO extends VoomerangBaseVO {

    private int donateCount;
    private int discardCount;
    private int recoveryCount;
    private String product_id;
    private String product_name;
    private int product_count;
    private String donate_state;
    private String discard_state;
    private String recovery_state;
    private String donate_dt;
    private String discard_dt;
    private String recovery_dt;
    private String category_name;
    private String donate_receipt_state;
    private String discard_receipt_state;
    private String recovery_receipt_state;
    private String account_name;
    private String account_id;
    private String disabled_state;
    private String donate_receipt_number;
    private String discard_receipt_payway;
    private String discard_receipt_number;
    private String recovery_payway;
    private String recovery_receipt_number;
    private String pickup_zipcode;
    private String pickup_address1;
    private String pickup_address2;
    private String return_delivery_cost;

    public int getDonateCount() {
        return donateCount;
    }

    public void setDonateCount(int donateCount) {
        this.donateCount = donateCount;
    }

    public int getDiscardCount() {
        return discardCount;
    }

    public void setDiscardCount(int discardCount) {
        this.discardCount = discardCount;
    }

    public int getRecoveryCount() {
        return recoveryCount;
    }

    public void setRecoveryCount(int recoveryCount) {
        this.recoveryCount = recoveryCount;
    }

    @Override
    public String getProduct_id() {
        return product_id;
    }

    @Override
    public void setProduct_id(String product_id) {
        this.product_id = product_id;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public int getProduct_count() {
        return product_count;
    }

    public void setProduct_count(int product_count) {
        this.product_count = product_count;
    }

    public String getDonate_state() {
        return donate_state;
    }

    public void setDonate_state(String donate_state) {
        this.donate_state = donate_state;
    }

    public String getDiscard_state() {
        return discard_state;
    }

    public void setDiscard_state(String discard_state) {
        this.discard_state = discard_state;
    }

    public String getRecovery_state() {
        return recovery_state;
    }

    public void setRecovery_state(String recovery_state) {
        this.recovery_state = recovery_state;
    }

    public String getDonate_dt() {
        return donate_dt;
    }

    public void setDonate_dt(String donate_dt) {
        this.donate_dt = donate_dt;
    }

    public String getDiscard_dt() {
        return discard_dt;
    }

    public void setDiscard_dt(String discard_dt) {
        this.discard_dt = discard_dt;
    }

    public String getRecovery_dt() {
        return recovery_dt;
    }

    public void setRecovery_dt(String recovery_dt) {
        this.recovery_dt = recovery_dt;
    }

    @Override
    public String getCategory_name() {
        return category_name;
    }

    @Override
    public void setCategory_name(String category_name) {
        this.category_name = category_name;
    }

    public String getDonate_receipt_state() {
        return donate_receipt_state;
    }

    public void setDonate_receipt_state(String donate_receipt_state) {
        this.donate_receipt_state = donate_receipt_state;
    }

    public String getDiscard_receipt_state() {
        return discard_receipt_state;
    }

    public void setDiscard_receipt_state(String discard_receipt_state) {
        this.discard_receipt_state = discard_receipt_state;
    }

    public String getRecovery_receipt_state() {
        return recovery_receipt_state;
    }

    public void setRecovery_receipt_state(String recovery_receipt_state) {
        this.recovery_receipt_state = recovery_receipt_state;
    }

    @Override
    public String getAccount_name() {
        return account_name;
    }

    @Override
    public void setAccount_name(String account_name) {
        this.account_name = account_name;
    }

    @Override
    public String getAccount_id() {
        return account_id;
    }

    @Override
    public void setAccount_id(String account_id) {this.account_id = account_id;}

    public String getDisabled_state() {
        return disabled_state;
    }

    public void setDisabled_state(String disabled_state) {
        this.disabled_state = disabled_state;
    }

    public String getDonate_receipt_number() {
        return donate_receipt_number;
    }

    public void setDonate_receipt_number(String donate_receipt_number) {
        this.donate_receipt_number = donate_receipt_number;
    }

    public String getDiscard_receipt_payway() {
        return discard_receipt_payway;
    }

    public void setDiscard_receipt_payway(String discard_receipt_payway) {
        this.discard_receipt_payway = discard_receipt_payway;
    }

    public String getDiscard_receipt_number() {
        return discard_receipt_number;
    }

    public void setDiscard_receipt_number(String discard_receipt_number) {
        this.discard_receipt_number = discard_receipt_number;
    }

    public String getRecovery_payway() {
        return recovery_payway;
    }

    public void setRecovery_payway(String recovery_payway) {
        this.recovery_payway = recovery_payway;
    }

    public String getRecovery_receipt_number() {
        return recovery_receipt_number;
    }

    public void setRecovery_receipt_number(String recovery_receipt_number) {
        this.recovery_receipt_number = recovery_receipt_number;
    }

    public String getPickup_zipcode() {
        return pickup_zipcode;
    }

    public void setPickup_zipcode(String pickup_zipcode) {
        this.pickup_zipcode = pickup_zipcode;
    }

    public String getPickup_address1() {
        return pickup_address1;
    }

    public void setPickup_address1(String pickup_address1) {
        this.pickup_address1 = pickup_address1;
    }

    public String getPickup_address2() {
        return pickup_address2;
    }

    public void setPickup_address2(String pickup_address2) {
        this.pickup_address2 = pickup_address2;
    }

    @Override
    public String getReturn_delivery_cost() {
        return return_delivery_cost;
    }

    @Override
    public void setReturn_delivery_cost(String return_delivery_cost) {
        this.return_delivery_cost = return_delivery_cost;
    }

    private String sort_type;
    private String pay_state;

    public String getSort_type() {
        return sort_type;
    }

    public void setSort_type(String sort_type) {
        this.sort_type = sort_type;
    }

    public String getPay_state() {
        return pay_state;
    }

    public void setPay_state(String pay_state) {
        this.pay_state = pay_state;
    }
}
