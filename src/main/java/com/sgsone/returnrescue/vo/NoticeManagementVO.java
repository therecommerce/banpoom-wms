package com.sgsone.returnrescue.vo;

import java.util.List;

public class NoticeManagementVO extends VoomerangBaseVO {

    private int notice_no;
    private String notice_type;
    private String notice_title;
    private String notice_dt;
    private String notice_writer;
    private String notice_channel;
    private String start_posting_dt;
    private String end_posting_dt;
    private int hits;
    private List<Integer> notice_no_list;
    private String notice_content;
    private String before_notice_no;
    private String before_notice_title;
    private String after_notice_no;
    private String after_notice_title;
    private int important_flag;
    private int banner_flag;

    public int getNotice_no() {
        return notice_no;
    }

    public void setNotice_no(int notice_no) {
        this.notice_no = notice_no;
    }

    public String getNotice_type() {
        return notice_type;
    }

    public void setNotice_type(String notice_type) {
        this.notice_type = notice_type;
    }

    public String getNotice_title() {
        return notice_title;
    }

    public void setNotice_title(String notice_title) {
        this.notice_title = notice_title;
    }

    public String getNotice_dt() {
        return notice_dt;
    }

    public void setNotice_dt(String notice_dt) {
        this.notice_dt = notice_dt;
    }

    public String getNotice_writer() {
        return notice_writer;
    }

    public void setNotice_writer(String notice_writer) {
        this.notice_writer = notice_writer;
    }

    public String getNotice_channel() {
        return notice_channel;
    }

    public void setNotice_channel(String notice_channel) {
        this.notice_channel = notice_channel;
    }

    public String getStart_posting_dt() {
        return start_posting_dt;
    }

    public void setStart_posting_dt(String start_posting_dt) {
        this.start_posting_dt = start_posting_dt;
    }

    public String getEnd_posting_dt() {
        return end_posting_dt;
    }

    public void setEnd_posting_dt(String end_posting_dt) {
        this.end_posting_dt = end_posting_dt;
    }

    public int getHits() {
        return hits;
    }

    public void setHits(int hits) {
        this.hits = hits;
    }

    public List<Integer> getNotice_no_list() {
        return notice_no_list;
    }

    public void setNotice_no_list(List<Integer> notice_no_list) {
        this.notice_no_list = notice_no_list;
    }

    public String getNotice_content() {
        return notice_content;
    }

    public void setNotice_content(String notice_content) {
        this.notice_content = notice_content;
    }

    public String getBefore_notice_no() {
        return before_notice_no;
    }

    public void setBefore_notice_no(String before_notice_no) {
        this.before_notice_no = before_notice_no;
    }

    public String getBefore_notice_title() {
        return before_notice_title;
    }

    public void setBefore_notice_title(String before_notice_title) {
        this.before_notice_title = before_notice_title;
    }

    public String getAfter_notice_no() {
        return after_notice_no;
    }

    public void setAfter_notice_no(String after_notice_no) {
        this.after_notice_no = after_notice_no;
    }

    public String getAfter_notice_title() {
        return after_notice_title;
    }

    public void setAfter_notice_title(String after_notice_title) {
        this.after_notice_title = after_notice_title;
    }

    public int getImportant_flag() {
        return important_flag;
    }

    public void setImportant_flag(int important_flag) {
        this.important_flag = important_flag;
    }

    public int getBanner_flag() {
        return banner_flag;
    }

    public void setBanner_flag(int banner_flag) {
        this.banner_flag = banner_flag;
    }
}
