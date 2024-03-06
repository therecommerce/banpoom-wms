package com.sgsone.returnrescue.vo;

public class ReportVO extends BaseVO {
    private int report_no;
    private int review_no;
    private String product_id;
    private String reg_dt;
    private String mod_dt;
    private String account_id;
    private String report_type1;
    private String report_type2;
    private String report_content;
    private String report_writer;
    private String report_title;

    public int getReport_no() {
        return report_no;
    }

    public void setReport_no(int report_no) {
        this.report_no = report_no;
    }

    public int getReview_no() {
        return review_no;
    }

    public void setReview_no(int review_no) {
        this.review_no = review_no;
    }

    public String getProduct_id() {
        return product_id;
    }

    public void setProduct_id(String product_id) {
        this.product_id = product_id;
    }

    @Override
    public String getReg_dt() {
        return reg_dt;
    }

    @Override
    public void setReg_dt(String reg_dt) {
        this.reg_dt = reg_dt;
    }

    @Override
    public String getMod_dt() {
        return mod_dt;
    }

    @Override
    public void setMod_dt(String mod_dt) {
        this.mod_dt = mod_dt;
    }

    @Override
    public String getAccount_id() {
        return account_id;
    }

    @Override
    public void setAccount_id(String account_id) {
        this.account_id = account_id;
    }

    public String getReport_type1() {
        return report_type1;
    }

    public void setReport_type1(String report_type1) {
        this.report_type1 = report_type1;
    }

    public String getReport_type2() {
        return report_type2;
    }

    public void setReport_type2(String report_type2) {
        this.report_type2 = report_type2;
    }

    public String getReport_content() {
        return report_content;
    }

    public void setReport_content(String report_content) {
        this.report_content = report_content;
    }

    public String getReport_writer() {
        return report_writer;
    }

    public void setReport_writer(String report_writer) {
        this.report_writer = report_writer;
    }

    public String getReport_title() {
        return report_title;
    }

    public void setReport_title(String report_title) {
        this.report_title = report_title;
    }
}
