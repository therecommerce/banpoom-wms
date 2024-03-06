package com.sgsone.returnrescue.vo;

import java.util.List;

public class QnaVO extends BaseVO{
    private int product_qna_no;
    private String product_qna_type1;
    private String product_qna_type2;
    private String product_qna_title;
    private String product_qna_content;
    private String product_qna_state;
    private String product_qna_answer;
    private String product_qna_reg_dt;
    private String product_qna_mod_dt;
    private String product_answer_dt;
    private String product_qna_email;
    private String img_id;
    private String account_id;
    private String product_qna_name;
    private String product_qna_answerer;
    private String answer_account_id;
    private String product_name;
    private String product_id;
    private int firstIndex = 0;					//첫페이지 인덱스
    private int recordCountPerPage = 10;		//페이지당 레코드갯수
    private List<Integer> file_id_list_question;
    private List<Integer> file_id_list_answer;
    private String previous_product_qna_title;
    private String next_product_qna_title;
    private int previous_product_qna_no;
    private int next_product_qna_no;
    private long file_id;
    private String order_request_id;
    private String previous_product_qna_state;
    private String next_product_qna_state;
    private String previous_product_qna_content;
    private String next_product_qna_content;

    public String getPrevious_product_qna_content() {
        return previous_product_qna_content;
    }

    public void setPrevious_product_qna_content(String previous_product_qna_content) {
        this.previous_product_qna_content = previous_product_qna_content;
    }

    public String getNext_product_qna_content() {
        return next_product_qna_content;
    }

    public void setNext_product_qna_content(String next_product_qna_content) {
        this.next_product_qna_content = next_product_qna_content;
    }

    public String getPrevious_product_qna_state() {
        return previous_product_qna_state;
    }

    public void setPrevious_product_qna_state(String previous_product_qna_state) {
        this.previous_product_qna_state = previous_product_qna_state;
    }

    public String getNext_product_qna_state() {
        return next_product_qna_state;
    }

    public void setNext_product_qna_state(String next_product_qna_state) {
        this.next_product_qna_state = next_product_qna_state;
    }

    public String getProduct_qna_type1() {
        return product_qna_type1;
    }

    public void setProduct_qna_type1(String product_qna_type1) {
        this.product_qna_type1 = product_qna_type1;
    }

    public String getProduct_qna_type2() {
        return product_qna_type2;
    }

    public void setProduct_qna_type2(String product_qna_type2) {
        this.product_qna_type2 = product_qna_type2;
    }

    public String getProduct_qna_title() {
        return product_qna_title;
    }

    public void setProduct_qna_title(String product_qna_title) {
        this.product_qna_title = product_qna_title;
    }

    public String getProduct_qna_content() {
        return product_qna_content;
    }

    public void setProduct_qna_content(String product_qna_content) {
        this.product_qna_content = product_qna_content;
    }

    public String getProduct_qna_state() {
        return product_qna_state;
    }

    public void setProduct_qna_state(String product_qna_state) {
        this.product_qna_state = product_qna_state;
    }

    public String getProduct_qna_answer() {
        return product_qna_answer;
    }

    public void setProduct_qna_answer(String product_qna_answer) {
        this.product_qna_answer = product_qna_answer;
    }

    public String getProduct_qna_reg_dt() {
        return product_qna_reg_dt;
    }

    public void setProduct_qna_reg_dt(String product_qna_reg_dt) {
        this.product_qna_reg_dt = product_qna_reg_dt;
    }

    public String getProduct_qna_mod_dt() {
        return product_qna_mod_dt;
    }

    public void setProduct_qna_mod_dt(String product_qna_mod_dt) {
        this.product_qna_mod_dt = product_qna_mod_dt;
    }

    public String getProduct_answer_dt() {
        return product_answer_dt;
    }

    public void setProduct_answer_dt(String product_answer_dt) {
        this.product_answer_dt = product_answer_dt;
    }

    public String getProduct_qna_email() {
        return product_qna_email;
    }

    public void setProduct_qna_email(String product_qna_email) {
        this.product_qna_email = product_qna_email;
    }

    public String getImg_id() {
        return img_id;
    }

    public void setImg_id(String img_id) {
        this.img_id = img_id;
    }

    @Override
    public String getAccount_id() {
        return account_id;
    }

    @Override
    public void setAccount_id(String account_id) {
        this.account_id = account_id;
    }

    public String getProduct_qna_name() {
        return product_qna_name;
    }

    public void setProduct_qna_name(String product_qna_name) {
        this.product_qna_name = product_qna_name;
    }

    public String getProduct_qna_answerer() {
        return product_qna_answerer;
    }

    public void setProduct_qna_answerer(String product_qna_answerer) {
        this.product_qna_answerer = product_qna_answerer;
    }

    @Override
    public int getFirstIndex() {
        return firstIndex;
    }

    @Override
    public void setFirstIndex(int firstIndex) {
        this.firstIndex = firstIndex;
    }

    @Override
    public int getRecordCountPerPage() {
        return recordCountPerPage;
    }

    @Override
    public void setRecordCountPerPage(int recordCountPerPage) {
        this.recordCountPerPage = recordCountPerPage;
    }

    public int getProduct_qna_no() {
        return product_qna_no;
    }

    public void setProduct_qna_no(int product_qna_no) {
        this.product_qna_no = product_qna_no;
    }

    public String getAnswer_account_id() {
        return answer_account_id;
    }

    public void setAnswer_account_id(String answer_account_id) {
        this.answer_account_id = answer_account_id;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public String getProduct_id() {
        return product_id;
    }

    public void setProduct_id(String product_id) {
        this.product_id = product_id;
    }

    public long getFile_id() {
        return file_id;
    }

    public void setFile_id(long file_id) {
        this.file_id = file_id;
    }

    public String getPrevious_product_qna_title() {
        return previous_product_qna_title;
    }

    public void setPrevious_product_qna_title(String previous_product_qna_title) {
        this.previous_product_qna_title = previous_product_qna_title;
    }

    public String getNext_product_qna_title() {
        return next_product_qna_title;
    }

    public void setNext_product_qna_title(String next_product_qna_title) {
        this.next_product_qna_title = next_product_qna_title;
    }

    public int getPrevious_product_qna_no() {
        return previous_product_qna_no;
    }

    public void setPrevious_product_qna_no(int previous_product_qna_no) {
        this.previous_product_qna_no = previous_product_qna_no;
    }

    public int getNext_product_qna_no() {
        return next_product_qna_no;
    }

    public void setNext_product_qna_no(int next_product_qna_no) {
        this.next_product_qna_no = next_product_qna_no;
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

    public String getOrder_request_id() {
        return order_request_id;
    }

    public void setOrder_request_id(String order_request_id) {
        this.order_request_id = order_request_id;
    }
}
