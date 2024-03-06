package com.sgsone.returnrescue.vo;

import java.util.List;

public class UserInquiryVO extends BaseVO {
    private int user_qna_no;
    private String user_qna_type1;
    private String user_qna_type2;
    private String user_qna_title;
    private String user_qna_content;
    private String user_qna_answer;
    private String user_qna_writer;
    private String user_qna_answerer;
    private String user_qna_reg_dt;
    private String user_qna_mod_dt;
    private String user_qna_answer_dt;
    private String user_qna_email;
    private String account_id;
    private String user_qna_phone;
    private String user_qna_state;
    private String user_answer_account_id;
    private int previous_user_qna_no;
    private int next_user_qna_no;
    private String previous_user_qna_title;
    private String next_user_qna_title;
    private List<Integer> file_id_list_question;
    private List<Integer> file_id_list_answer;

    private long file_id;

    public int getUser_qna_no() {
        return user_qna_no;
    }

    public void setUser_qna_no(int user_qna_no) {
        this.user_qna_no = user_qna_no;
    }

    public String getUser_qna_type1() {
        return user_qna_type1;
    }

    public void setUser_qna_type1(String user_qna_type1) {
        this.user_qna_type1 = user_qna_type1;
    }

    public String getUser_qna_type2() {
        return user_qna_type2;
    }

    public void setUser_qna_type2(String user_qna_type2) {
        this.user_qna_type2 = user_qna_type2;
    }

    public String getUser_qna_title() {
        return user_qna_title;
    }

    public void setUser_qna_title(String user_qna_title) {
        this.user_qna_title = user_qna_title;
    }

    public String getUser_qna_content() {
        return user_qna_content;
    }

    public void setUser_qna_content(String user_qna_content) {
        this.user_qna_content = user_qna_content;
    }

    public String getUser_qna_answer() {
        return user_qna_answer;
    }

    public void setUser_qna_answer(String user_qna_answer) {
        this.user_qna_answer = user_qna_answer;
    }

    public String getUser_qna_writer() {
        return user_qna_writer;
    }

    public void setUser_qna_writer(String user_qna_writer) {
        this.user_qna_writer = user_qna_writer;
    }

    public String getUser_qna_answerer() {
        return user_qna_answerer;
    }

    public void setUser_qna_answerer(String user_qna_answerer) {
        this.user_qna_answerer = user_qna_answerer;
    }

    public String getUser_qna_reg_dt() {
        return user_qna_reg_dt;
    }

    public void setUser_qna_reg_dt(String user_qna_reg_dt) {
        this.user_qna_reg_dt = user_qna_reg_dt;
    }

    public String getUser_qna_mod_dt() {
        return user_qna_mod_dt;
    }

    public void setUser_qna_mod_dt(String user_qna_mod_dt) {
        this.user_qna_mod_dt = user_qna_mod_dt;
    }

    public String getUser_qna_answer_dt() {
        return user_qna_answer_dt;
    }

    public void setUser_qna_answer_dt(String user_qna_answer_dt) {
        this.user_qna_answer_dt = user_qna_answer_dt;
    }

    public String getUser_qna_email() {
        return user_qna_email;
    }

    public void setUser_qna_email(String user_qna_email) {
        this.user_qna_email = user_qna_email;
    }

    @Override
    public String getAccount_id() {
        return account_id;
    }

    @Override
    public void setAccount_id(String account_id) {
        this.account_id = account_id;
    }

    public String getUser_qna_phone() {
        return user_qna_phone;
    }

    public void setUser_qna_phone(String user_qna_phone) {
        this.user_qna_phone = user_qna_phone;
    }

    public String getUser_qna_state() {
        return user_qna_state;
    }

    public void setUser_qna_state(String user_qna_state) {
        this.user_qna_state = user_qna_state;
    }

    public String getUser_answer_account_id() {
        return user_answer_account_id;
    }

    public void setUser_answer_account_id(String user_answer_account_id) {
        this.user_answer_account_id = user_answer_account_id;
    }

    public int getPrevious_user_qna_no() {
        return previous_user_qna_no;
    }

    public void setPrevious_user_qna_no(int previous_user_qna_no) {
        this.previous_user_qna_no = previous_user_qna_no;
    }

    public int getNext_user_qna_no() {
        return next_user_qna_no;
    }

    public void setNext_user_qna_no(int next_user_qna_no) {
        this.next_user_qna_no = next_user_qna_no;
    }

    public String getPrevious_user_qna_title() {
        return previous_user_qna_title;
    }

    public void setPrevious_user_qna_title(String previous_user_qna_title) {
        this.previous_user_qna_title = previous_user_qna_title;
    }

    public String getNext_user_qna_title() {
        return next_user_qna_title;
    }

    public void setNext_user_qna_title(String next_user_qna_title) {
        this.next_user_qna_title = next_user_qna_title;
    }

    public List<Integer> getFile_id_list_question() {
        return file_id_list_question;
    }

    public void setFile_id_list_question(List<Integer> file_id_list_question) {
        this.file_id_list_question = file_id_list_question;
    }

    public List<Integer> getFile_id_list_answer() {
        return file_id_list_answer;
    }

    public void setFile_id_list_answer(List<Integer> file_id_list_answer) {
        this.file_id_list_answer = file_id_list_answer;
    }

    public long getFile_id() {
        return file_id;
    }

    public void setFile_id(long file_id) {
        this.file_id = file_id;
    }
}
