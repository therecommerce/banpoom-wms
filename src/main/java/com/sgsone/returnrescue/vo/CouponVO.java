package com.sgsone.returnrescue.vo;

import java.util.List;

public class CouponVO extends VoomerangBaseVO{

    private int coupon_no;
    private String coupon_type;
    private String coupon_classification;
    private String coupon_name;
    private String coupon_category;
    private String sale_type;
    private Integer sale_percent;
    private Integer sale_limit;
    private Integer sale_price;
    private Integer minimum_price;
    private Integer issuance_count;
    private String overlap_use;
    private String issuance_grade;
    private String reg_dt;
    private String start_dt;
    private String end_dt;
    private String coupon_memo;
    private String account_id;
    private Integer use_flag;
    private String use_dt;
    private int order_request_id;
    private Integer application_sale_price;
    private String issue_dt;
    private String coupon_state;
    private String register;
    private List<Integer> coupon_no_list;
    private String diffDate;
    private String reg_dt_type;
    private String coupon_code;
    private Integer day;
    private long file_id;
    private String minimum_type;
    private String duplicate_type;
    private Integer coupon_category_id;
    private Integer coupon_parent_category_id;

    public Integer getCoupon_category_id() {
        return coupon_category_id;
    }

    public void setCoupon_category_id(Integer coupon_category_id) {
        this.coupon_category_id = coupon_category_id;
    }

    public Integer getCoupon_parent_category_id() {
        return coupon_parent_category_id;
    }

    public void setCoupon_parent_category_id(Integer coupon_parent_category_id) {
        this.coupon_parent_category_id = coupon_parent_category_id;
    }

    public long getFile_id() {
        return file_id;
    }

    public void setFile_id(long file_id) {
        this.file_id = file_id;
    }

    public String getMinimum_type() {
        return minimum_type;
    }

    public void setMinimum_type(String minimum_type) {
        this.minimum_type = minimum_type;
    }

    public String getDuplicate_type() {
        return duplicate_type;
    }

    public void setDuplicate_type(String duplicate_type) {
        this.duplicate_type = duplicate_type;
    }

    public int getCoupon_no() {
        return coupon_no;
    }

    public void setCoupon_no(int coupon_no) {
        this.coupon_no = coupon_no;
    }

    public String getCoupon_type() {
        return coupon_type;
    }

    public void setCoupon_type(String coupon_type) {
        this.coupon_type = coupon_type;
    }

    public String getCoupon_classification() {
        return coupon_classification;
    }

    public void setCoupon_classification(String coupon_classification) {
        this.coupon_classification = coupon_classification;
    }

    public String getCoupon_name() {
        return coupon_name;
    }

    public void setCoupon_name(String coupon_name) {
        this.coupon_name = coupon_name;
    }

    public String getCoupon_category() {
        return coupon_category;
    }

    public void setCoupon_category(String coupon_category) {
        this.coupon_category = coupon_category;
    }

    public String getSale_type() {
        return sale_type;
    }

    public void setSale_type(String sale_type) {
        this.sale_type = sale_type;
    }

    public Integer getSale_percent() {
        return sale_percent;
    }

    public void setSale_percent(Integer sale_percent) {
        this.sale_percent = sale_percent;
    }

    public Integer getSale_limit() {
        return sale_limit;
    }

    public void setSale_limit(Integer sale_limit) {
        this.sale_limit = sale_limit;
    }

    public Integer getSale_price() {
        return sale_price;
    }

    public void setSale_price(Integer sale_price) {
        this.sale_price = sale_price;
    }

    public Integer getMinimum_price() {
        return minimum_price;
    }

    public void setMinimum_price(Integer minimum_price) {
        this.minimum_price = minimum_price;
    }

    public Integer getIssuance_count() {
        return issuance_count;
    }

    public void setIssuance_count(Integer issuance_count) {
        this.issuance_count = issuance_count;
    }

    public String getOverlap_use() {
        return overlap_use;
    }

    public void setOverlap_use(String overlap_use) {
        this.overlap_use = overlap_use;
    }

    public String getIssuance_grade() {
        return issuance_grade;
    }

    public void setIssuance_grade(String issuance_grade) {
        this.issuance_grade = issuance_grade;
    }

    public String getReg_dt() {
        return reg_dt;
    }

    public void setReg_dt(String reg_dt) {
        this.reg_dt = reg_dt;
    }

    public String getStart_dt() {
        return start_dt;
    }

    public void setStart_dt(String start_dt) {
        this.start_dt = start_dt;
    }

    public String getEnd_dt() {
        return end_dt;
    }

    public void setEnd_dt(String end_dt) {
        this.end_dt = end_dt;
    }

    public String getCoupon_memo() {
        return coupon_memo;
    }

    public void setCoupon_memo(String coupon_memo) {
        this.coupon_memo = coupon_memo;
    }

    public String getAccount_id() {
        return account_id;
    }

    public void setAccount_id(String account_id) {
        this.account_id = account_id;
    }

    public Integer getUse_flag() {
        return use_flag;
    }

    public void setUse_flag(Integer use_flag) {
        this.use_flag = use_flag;
    }

    public String getUse_dt() {
        return use_dt;
    }

    public void setUse_dt(String use_dt) {
        this.use_dt = use_dt;
    }

    public int getOrder_request_id() {
        return order_request_id;
    }

    public void setOrder_request_id(int order_request_id) {
        this.order_request_id = order_request_id;
    }

    public Integer getApplication_sale_price() {
        return application_sale_price;
    }

    public void setApplication_sale_price(Integer application_sale_price) {
        this.application_sale_price = application_sale_price;
    }

    public String getIssue_dt() {
        return issue_dt;
    }

    public void setIssue_dt(String issue_dt) {
        this.issue_dt = issue_dt;
    }

    public String getCoupon_state() {
        return coupon_state;
    }

    public void setCoupon_state(String coupon_state) {
        this.coupon_state = coupon_state;
    }

    public String getRegister() {
        return register;
    }

    public void setRegister(String register) {
        this.register = register;
    }

    public List<Integer> getCoupon_no_list() {
        return coupon_no_list;
    }

    public void setCoupon_no_list(List<Integer> coupon_no_list) {
        this.coupon_no_list = coupon_no_list;
    }

    public String getDiffDate() {
        return diffDate;
    }

    public void setDiffDate(String diffDate) {
        this.diffDate = diffDate;
    }

    public String getReg_dt_type() {
        return reg_dt_type;
    }

    public void setReg_dt_type(String reg_dt_type) {
        this.reg_dt_type = reg_dt_type;
    }

    public String getCoupon_code() {
        return coupon_code;
    }

    public void setCoupon_code(String coupon_code) {
        this.coupon_code = coupon_code;
    }

    public Integer getDay() {
        return day;
    }

    public void setDay(Integer day) {
        this.day = day;
    }
}
