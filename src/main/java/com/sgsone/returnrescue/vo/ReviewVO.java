package com.sgsone.returnrescue.vo;

import java.util.List;

public class ReviewVO extends BaseVO {
    private String review_no;
    private String review_score;
    private String review_reg_dt;
    private String review_mod_dt;
    private String review_type;
    private String review_content;
    private String review_answer;
    private String account_id;
    private String product_id;
    private String order_request_id;
    private String review_account_id;
    private String sell_type;
    private String product_name;
    private int review_like;
    private boolean review_best;
    private int firstIndex = 0;					//첫페이지 인덱스
    private int recordCountPerPage = 10;		//페이지당 레코드갯수
    private List<Integer> file_id_list;
    private String report_content;
    private String report_type1;
    private String report_type2;
    private List<Integer> file_id_list_question;
    private List<Integer> file_id_list_answer;
    private String review_answer_writer;
    private String answer_account_id;
    private int review_best_select;
    private int review_report_select;
    private List<Integer> review_no_list;
    private String review_best_reg_dt;
    private Integer is_keeping;

    public Integer getIs_keeping() {
        return is_keeping;
    }

    public void setIs_keeping(Integer is_keeping) {
        this.is_keeping = is_keeping;
    }

    public String getReview_no() {
        return review_no;
    }

    public void setReview_no(String review_no) {
        this.review_no = review_no;
    }

    public String getReview_score() {
        return review_score;
    }

    public void setReview_score(String review_score) {
        this.review_score = review_score;
    }

    public String getReview_reg_dt() {
        return review_reg_dt;
    }

    public void setReview_reg_dt(String review_reg_dt) {
        this.review_reg_dt = review_reg_dt;
    }

    public String getReview_mod_dt() {
        return review_mod_dt;
    }

    public void setReview_mod_dt(String review_mod_dt) {
        this.review_mod_dt = review_mod_dt;
    }

    public String getReview_type() {
        return review_type;
    }

    public void setReview_type(String review_type) {
        this.review_type = review_type;
    }

    @Override
    public String getAccount_id() {
        return account_id;
    }

    @Override
    public void setAccount_id(String account_id) {
        this.account_id = account_id;
    }

    public String getProduct_id() {
        return product_id;
    }

    public void setProduct_id(String product_id) {
        this.product_id = product_id;
    }

    public String getOrder_request_id() {
        return order_request_id;
    }

    public void setOrder_request_id(String order_request_id) {
        this.order_request_id = order_request_id;
    }

    public String getReview_account_id() {
        return review_account_id;
    }

    public void setReview_account_id(String review_account_id) {
        this.review_account_id = review_account_id;
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

    public List<Integer> getFile_id_list() {
        return file_id_list;
    }

    public void setFile_id_list(List<Integer> file_id_list) {
        this.file_id_list = file_id_list;
    }

    public String getSell_type() {
        return sell_type;
    }

    public void setSell_type(String sell_type) {
        this.sell_type = sell_type;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public int getReview_like() {
        return review_like;
    }

    public void setReview_like(int review_like) {
        this.review_like = review_like;
    }

    public boolean isReview_best() {
        return review_best;
    }

    public void setReview_best(boolean review_best) {
        this.review_best = review_best;
    }

    public String getReview_answer() {
        return review_answer;
    }

    public void setReview_answer(String review_answer) {
        this.review_answer = review_answer;
    }

    public String getReview_content() {
        return review_content;
    }

    public void setReview_content(String review_content) {
        this.review_content = review_content;
    }

    public String getReport_content() {
        return report_content;
    }

    public void setReport_content(String report_content) {
        this.report_content = report_content;
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

    public String getReview_answer_writer() {
        return review_answer_writer;
    }

    public void setReview_answer_writer(String review_answer_writer) {
        this.review_answer_writer = review_answer_writer;
    }

    public String getAnswer_account_id() {
        return answer_account_id;
    }

    public void setAnswer_account_id(String answer_account_id) {
        this.answer_account_id = answer_account_id;
    }

    public int getReview_best_select() {
        return review_best_select;
    }

    public void setReview_best_select(int review_best_select) {
        this.review_best_select = review_best_select;
    }

    public int getReview_report_select() {
        return review_report_select;
    }

    public void setReview_report_select(int review_report_select) {
        this.review_report_select = review_report_select;
    }

    public List<Integer> getReview_no_list() {
        return review_no_list;
    }

    public void setReview_no_list(List<Integer> review_no_list) {
        this.review_no_list = review_no_list;
    }

    public String getReview_best_reg_dt() {
        return review_best_reg_dt;
    }

    public void setReview_best_reg_dt(String review_best_reg_dt) {
        this.review_best_reg_dt = review_best_reg_dt;
    }
}
