package com.sgsone.returnrescue.vo;

import java.util.List;

public class StartSellerVO extends BaseVO{
    private int startseller_qna_no;
    private String startseller_qna_title;
    private String startseller_qna_content;
    private String startseller_qna_company;
    private String startseller_qna_name;
    private String startseller_qna_reg_dt;
    private String startseller_qna_email;
    private String startseller_qna_phone;
    private String startseller_qna_answer;
    private String startseller_qna_answerer;
    private String startseller_qna_answer_dt;
    private String startseller_qna_answer_account_id;
    private String startseller_reg_account_id;
    private String startseller_qna_state;
    private List<Integer> file_id_list_question;
    private List<Integer> file_id_list_answer;
    private long file_id;

    private int previous_qna_no;
    private String previous_qna_title;
    private int next_qna_no;
    private String next_qna_title;

    public int getStartseller_qna_no() {
        return startseller_qna_no;
    }

    public void setStartseller_qna_no(int startseller_qna_no) {
        this.startseller_qna_no = startseller_qna_no;
    }

    public String getStartseller_qna_title() {
        return startseller_qna_title;
    }

    public void setStartseller_qna_title(String startseller_qna_title) {
        this.startseller_qna_title = startseller_qna_title;
    }

    public String getStartseller_qna_content() {
        return startseller_qna_content;
    }

    public void setStartseller_qna_content(String startseller_qna_content) {
        this.startseller_qna_content = startseller_qna_content;
    }

    public String getStartseller_qna_company() {
        return startseller_qna_company;
    }

    public void setStartseller_qna_company(String startseller_qna_company) {
        this.startseller_qna_company = startseller_qna_company;
    }

    public String getStartseller_qna_name() {
        return startseller_qna_name;
    }

    public void setStartseller_qna_name(String startseller_qna_name) {
        this.startseller_qna_name = startseller_qna_name;
    }

    public String getStartseller_qna_reg_dt() {
        return startseller_qna_reg_dt;
    }

    public void setStartseller_qna_reg_dt(String startseller_qna_reg_dt) {
        this.startseller_qna_reg_dt = startseller_qna_reg_dt;
    }

    public String getStartseller_qna_email() {
        return startseller_qna_email;
    }

    public void setStartseller_qna_email(String startseller_qna_email) {
        this.startseller_qna_email = startseller_qna_email;
    }

    public String getStartseller_qna_phone() {
        return startseller_qna_phone;
    }

    public void setStartseller_qna_phone(String startseller_qna_phone) {
        this.startseller_qna_phone = startseller_qna_phone;
    }

    public String getStartseller_qna_answer() {
        return startseller_qna_answer;
    }

    public void setStartseller_qna_answer(String startseller_qna_answer) {
        this.startseller_qna_answer = startseller_qna_answer;
    }

    public String getStartseller_qna_answerer() {
        return startseller_qna_answerer;
    }

    public void setStartseller_qna_answerer(String startseller_qna_answerer) {
        this.startseller_qna_answerer = startseller_qna_answerer;
    }

    public String getStartseller_qna_answer_dt() {
        return startseller_qna_answer_dt;
    }

    public void setStartseller_qna_answer_dt(String startseller_qna_answer_dt) {
        this.startseller_qna_answer_dt = startseller_qna_answer_dt;
    }

    public String getStartseller_qna_answer_account_id() {
        return startseller_qna_answer_account_id;
    }

    public void setStartseller_qna_answer_account_id(String startseller_qna_answer_account_id) {
        this.startseller_qna_answer_account_id = startseller_qna_answer_account_id;
    }

    public String getStartseller_reg_account_id() {
        return startseller_reg_account_id;
    }

    public void setStartseller_reg_account_id(String startseller_reg_account_id) {
        this.startseller_reg_account_id = startseller_reg_account_id;
    }

    public String getStartseller_qna_state() {
        return startseller_qna_state;
    }

    public void setStartseller_qna_state(String startseller_qna_state) {
        this.startseller_qna_state = startseller_qna_state;
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

    public int getPrevious_qna_no() {
        return previous_qna_no;
    }

    public void setPrevious_qna_no(int previous_qna_no) {
        this.previous_qna_no = previous_qna_no;
    }

    public String getPrevious_qna_title() {
        return previous_qna_title;
    }

    public void setPrevious_qna_title(String previous_qna_title) {
        this.previous_qna_title = previous_qna_title;
    }

    public int getNext_qna_no() {
        return next_qna_no;
    }

    public void setNext_qna_no(int next_qna_no) {
        this.next_qna_no = next_qna_no;
    }

    public String getNext_qna_title() {
        return next_qna_title;
    }

    public void setNext_qna_title(String next_qna_title) {
        this.next_qna_title = next_qna_title;
    }
}
