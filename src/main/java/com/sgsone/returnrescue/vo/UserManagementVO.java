package com.sgsone.returnrescue.vo;

import com.sgsone.returnrescue.util.Aes128;

import java.util.List;

public class UserManagementVO extends VoomerangBaseVO{

    private String account_id;
    private String account_name;
    private String business_info_flag;
    private String grade_id;
    private String last_login;
    private String reg_dt;
    private int account_no;
    private int account_dormant;
    private List<String> account_id_list;
    private String vip_grade;
    private String aes_key = Aes128.DEFAULT_KEY;
    private int monthly_buy_count;
    private int monthly_buy_price;
    private int qna_count;
    private int cal_predict_price;
    private int consignment_sale_count;
    private int direct_sale_count;
    private int donate_count;
    private int discard_count;
    private int recovery_count;

    @Override
    public String getAccount_id() {
        return account_id;
    }

    @Override
    public void setAccount_id(String account_id) {
        this.account_id = account_id;
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
    public String getBusiness_info_flag() {
        return business_info_flag;
    }

    public void setBusiness_info_flag(String business_info_flag) {
        this.business_info_flag = business_info_flag;
    }

    @Override
    public String getGrade_id() {
        return grade_id;
    }

    public void setGrade_id(String grade_id) {
        this.grade_id = grade_id;
    }

    @Override
    public String getLast_login() {
        return last_login;
    }

    @Override
    public void setLast_login(String last_login) {
        this.last_login = last_login;
    }

    @Override
    public String getReg_dt() {
        return reg_dt;
    }

    @Override
    public void setReg_dt(String reg_dt) {
        this.reg_dt = reg_dt;
    }

    public int getAccount_no() {
        return account_no;
    }

    public void setAccount_no(int account_no) {
        this.account_no = account_no;
    }

    @Override
    public int getAccount_dormant() {
        return account_dormant;
    }

    @Override
    public void setAccount_dormant(int account_dormant) {
        this.account_dormant = account_dormant;
    }

    public List<String> getAccount_id_list() {
        return account_id_list;
    }

    public void setAccount_id_list(List<String> account_id_list) {
        this.account_id_list = account_id_list;
    }

    public String getVip_grade() {
        return vip_grade;
    }

    public void setVip_grade(String vip_grade) {
        this.vip_grade = vip_grade;
    }

    @Override
    public String getAes_key() {
        return aes_key;
    }

    @Override
    public void setAes_key(String aes_key) {
        this.aes_key = aes_key;
    }

    public int getMonthly_buy_count() {
        return monthly_buy_count;
    }

    public void setMonthly_buy_count(int monthly_buy_count) {
        this.monthly_buy_count = monthly_buy_count;
    }

    public int getMonthly_buy_price() {
        return monthly_buy_price;
    }

    public void setMonthly_buy_price(int monthly_buy_price) {
        this.monthly_buy_price = monthly_buy_price;
    }

    public int getQna_count() {
        return qna_count;
    }

    public void setQna_count(int qna_count) {
        this.qna_count = qna_count;
    }

    public int getCal_predict_price() {
        return cal_predict_price;
    }

    public void setCal_predict_price(int cal_predict_price) {
        this.cal_predict_price = cal_predict_price;
    }

    public int getConsignment_sale_count() {
        return consignment_sale_count;
    }

    public void setConsignment_sale_count(int consignment_sale_count) {
        this.consignment_sale_count = consignment_sale_count;
    }

    public int getDirect_sale_count() {
        return direct_sale_count;
    }

    public void setDirect_sale_count(int direct_sale_count) {
        this.direct_sale_count = direct_sale_count;
    }

    public int getDonate_count() {
        return donate_count;
    }

    public void setDonate_count(int donate_count) {
        this.donate_count = donate_count;
    }

    public int getDiscard_count() {
        return discard_count;
    }

    public void setDiscard_count(int discard_count) {
        this.discard_count = discard_count;
    }

    public int getRecovery_count() {
        return recovery_count;
    }

    public void setRecovery_count(int recovery_count) {
        this.recovery_count = recovery_count;
    }

    private String forwarding_address;
    private String return_address;

    public String getForwarding_address() {
        return forwarding_address;
    }

    public void setForwarding_address(String forwarding_address) {
        this.forwarding_address = forwarding_address;
    }

    public String getReturn_address() {
        return return_address;
    }

    public void setReturn_address(String return_address) {
        this.return_address = return_address;
    }
}
