package com.sgsone.returnrescue.vo;

public class PointVO extends AdminVO{

    private int point_id;
    private int grade1;
    private int grade2;
    private int grade3;
    private int grade4;
    private int grade5;
    private int review_reward_point;
    private int review_reward_photo_point;
    private int restrict_point_purchase;
    private int restrict_point_use;
    private int restrict_point_percent;
    private int point_lifetime;
    private boolean is_duplicate;

    private String account_id;
    private String admin_account_id;
    private String state;
    private String reg_dt;



    public int getPoint_id() {
        return point_id;
    }

    public void setPoint_id(int point_id) {
        this.point_id = point_id;
    }

    public int getGrade1() {
        return grade1;
    }

    public void setGrade1(int grade1) {
        this.grade1 = grade1;
    }

    public int getGrade2() {
        return grade2;
    }

    public void setGrade2(int grade2) {
        this.grade2 = grade2;
    }

    public int getGrade3() {
        return grade3;
    }

    public void setGrade3(int grade3) {
        this.grade3 = grade3;
    }

    public int getGrade4() {
        return grade4;
    }

    public void setGrade4(int grade4) {
        this.grade4 = grade4;
    }

    public void setGrade5(int grade5) {
        this.grade5 = grade5;
    }

    public int getGrade5() {
        return grade5;
    }

    public int getReview_reward_point() {
        return review_reward_point;
    }

    public void setReview_reward_point(int review_reward_point) {
        this.review_reward_point = review_reward_point;
    }

    public int getReview_reward_photo_point() {
        return review_reward_photo_point;
    }

    public void setReview_reward_photo_point(int review_reward_photo_point) {
        this.review_reward_photo_point = review_reward_photo_point;
    }

    public int getRestrict_point_purchase() {
        return restrict_point_purchase;
    }

    public void setRestrict_point_purchase(int restrict_point_purchase) {
        this.restrict_point_purchase = restrict_point_purchase;
    }

    public int getRestrict_point_use() {
        return restrict_point_use;
    }

    public void setRestrict_point_use(int restrict_point_use) {
        this.restrict_point_use = restrict_point_use;
    }

    public int getRestrict_point_percent() {
        return restrict_point_percent;
    }

    public void setRestrict_point_percent(int restrict_point_percent) {
        this.restrict_point_percent = restrict_point_percent;
    }

    public int getPoint_lifetime() {
        return point_lifetime;
    }

    public void setPoint_lifetime(int point_lifetime) {
        this.point_lifetime = point_lifetime;
    }

    public String getAccount_id() {
        return account_id;
    }

    public void setAccount_id(String account_id) {
        this.account_id = account_id;
    }

    public String getAdmin_account_id() {
        return admin_account_id;
    }

    public void setAdmin_account_id(String admin_account_id) {
        this.admin_account_id = admin_account_id;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getReg_dt() {
        return reg_dt;
    }

    public void setReg_dt(String reg_dt) {
        this.reg_dt = reg_dt;
    }

    public boolean getIs_duplicate() {
        return is_duplicate;
    }

    public void setIs_duplicate(boolean is_duplicate) {
        this.is_duplicate = is_duplicate;
    }
}
