package com.sgsone.returnrescue.vo;

import java.util.List;

public class SellerInquiryVO extends BaseVO {
    private int qna_no;
    private String qna_type1;
    private String qna_type2;
    private String qna_title;
    private String qna_state;
    private String account_id;
    private String qna_reg_dt;
    private String qna_answer;
    private String qna_writer;
    private String answeris;
    private String qna_answer_dt;
    private String qna_email;
    private String qna_phone;
    private String qna_content;
    private String answer_account_id;
    private List<Integer> file_id_list_question;
    private List<Integer> file_id_list_answer;
    private int previous_qna_no;
    private String previous_qna_title;
    private int next_qna_no;
    private String next_qna_title;
    private long file_id;

    public int getQna_no() {
        return qna_no;
    }

    public void setQna_no(int qna_no) {
        this.qna_no = qna_no;
    }

    public String getQna_type1() {
        return qna_type1;
    }

    public void setQna_type1(String qna_type1) {
        this.qna_type1 = qna_type1;
    }

    public String getQna_type2() {
        return qna_type2;
    }

    public void setQna_type2(String qna_type2) {
        this.qna_type2 = qna_type2;
    }

    public String getQna_title() {
        return qna_title;
    }

    public void setQna_title(String qna_title) {
        this.qna_title = qna_title;
    }

    public String getQna_state() {
        return qna_state;
    }

    public void setQna_state(String qna_state) {
        this.qna_state = qna_state;
    }

    @Override
    public String getAccount_id() {
        return account_id;
    }

    @Override
    public void setAccount_id(String account_id) {
        this.account_id = account_id;
    }

    public String getQna_reg_dt() {
        return qna_reg_dt;
    }

    public void setQna_reg_dt(String qna_reg_dt) {
        this.qna_reg_dt = qna_reg_dt;
    }

    public String getQna_answer() {
        return qna_answer;
    }

    public void setQna_answer(String qna_answer) {
        this.qna_answer = qna_answer;
    }

    public String getQna_writer() {
        return qna_writer;
    }

    public void setQna_writer(String qna_writer) {
        this.qna_writer = qna_writer;
    }

    public String getAnsweris() {
        return answeris;
    }

    public void setAnsweris(String answeris) {
        this.answeris = answeris;
    }

    public String getQna_answer_dt() {
        return qna_answer_dt;
    }

    public void setQna_answer_dt(String qna_answer_dt) {
        this.qna_answer_dt = qna_answer_dt;
    }

    public String getQna_email() {
        return qna_email;
    }

    public void setQna_email(String qna_email) {
        this.qna_email = qna_email;
    }

    public String getQna_phone() {
        return qna_phone;
    }

    public void setQna_phone(String qna_phone) {
        this.qna_phone = qna_phone;
    }

    public String getQna_content() {
        return qna_content;
    }

    public void setQna_content(String qna_content) {
        this.qna_content = qna_content;
    }

    public String getAnswer_account_id() {
        return answer_account_id;
    }

    public void setAnswer_account_id(String answer_account_id) {
        this.answer_account_id = answer_account_id;
    }

    public int getPrevious_qna_no() {
        return previous_qna_no;
    }

    public void setPrevious_qna_no(int previous_qna_no) {
        this.previous_qna_no = previous_qna_no;
    }

    public String getNext_qna_title() {
        return next_qna_title;
    }

    public void setNext_qna_title(String next_qna_title) {
        this.next_qna_title = next_qna_title;
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

    public long getFile_id() {
        return file_id;
    }

    public void setFile_id(long file_id) {
        this.file_id = file_id;
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
}
