package com.sgsone.returnrescue.vo;

public class UserBanVO extends BaseVO {

    private int ban_no;
    private String account_id;
    private String ban_by;
    private String ban_reason;
    private String ban_message;

    public int getBan_no() {
        return ban_no;
    }

    public void setBan_no(int ban_no) {
        this.ban_no = ban_no;
    }

    public String getAccount_id() {
        return account_id;
    }

    public void setAccount_id(String account_id) {
        this.account_id = account_id;
    }

    public String getBan_by() {
        return ban_by;
    }

    public void setBan_by(String ban_by) {
        this.ban_by = ban_by;
    }

    public String getBan_reason() {
        return ban_reason;
    }

    public void setBan_reason(String ban_reason) {
        this.ban_reason = ban_reason;
    }

    public String getBan_message() {
        return ban_message;
    }

    public void setBan_message(String ban_message) {
        this.ban_message = ban_message;
    }
}
