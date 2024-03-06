package com.sgsone.returnrescue.vo;

import java.util.List;

public class NotificationVO extends BaseVO {

    private int noti_no;
    private String account_id;
    private List<String> account_id_list;
    private String type;
    private String title;
    private String content;
    private Integer use_flag;
    private String reg_dt;
    private String check_dt;
    private int check_flag;
    private int read_flag;
    private String diffDate;
    private int grade_id;

    public List<String> getAccount_id_list() {
        return account_id_list;
    }

    public void setAccount_id_list(List<String> account_id_list) {
        this.account_id_list = account_id_list;
    }

    public int getRead_flag() {
        return read_flag;
    }

    public void setRead_flag(int read_flag) {
        this.read_flag = read_flag;
    }

    public int getCheck_flag() {
        return check_flag;
    }

    public void setCheck_flag(int check_flag) {
        this.check_flag = check_flag;
    }

    public int getNoti_no() {
        return noti_no;
    }

    public void setNoti_no(int noti_no) {
        this.noti_no = noti_no;
    }

    public String getAccount_id() {
        return account_id;
    }

    public void setAccount_id(String account_id) {
        this.account_id = account_id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Integer getUse_flag() {
        return use_flag;
    }

    public void setUse_flag(Integer use_flag) {
        this.use_flag = use_flag;
    }

    public String getReg_dt() {
        return reg_dt;
    }

    public void setReg_dt(String reg_dt) {
        this.reg_dt = reg_dt;
    }

    public String getCheck_dt() {
        return check_dt;
    }

    public void setCheck_dt(String check_dt) {
        this.check_dt = check_dt;
    }

    public String getDiffDate() {
        return diffDate;
    }

    public void setDiffDate(String diffDate) {
        this.diffDate = diffDate;
    }

    public int getGrade_id() {
        return grade_id;
    }

    public void setGrade_id(int grade_id) {
        this.grade_id = grade_id;
    }
}
