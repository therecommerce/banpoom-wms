package com.sgsone.returnrescue.vo.naverVO;

import com.sgsone.returnrescue.vo.BaseVO;

import java.util.Date;


public class Contents extends BaseVO {

   String createDate;

   String question;

   String answer;

   Boolean answered;

   String product_id;

   String product_name;

   String maskedWriterId;

   String questionId;

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public Boolean getAnswered() {
        return answered;
    }

    public void setAnswered(Boolean answered) {
        this.answered = answered;
    }

    public String getProduct_id() {
        return product_id;
    }

    public void setProduct_id(String product_id) {
        this.product_id = product_id;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public String getMaskedWriterId() {
        return maskedWriterId;
    }

    public void setMaskedWriterId(String maskedWriterId) {
        this.maskedWriterId = maskedWriterId;
    }

    public String getQuestionId() {
        return questionId;
    }

    public void setQuestionId(String questionId) {
        this.questionId = questionId;
    }

    private String previous_product_qna_no;
    private String previous_product_qna_title;
    private String previous_product_qna_state;
    private String next_product_qna_no;
    private String next_product_qna_title;
    private String next_product_qna_state;

    public String getPrevious_product_qna_no() {
        return previous_product_qna_no;
    }

    public void setPrevious_product_qna_no(String previous_product_qna_no) {
        this.previous_product_qna_no = previous_product_qna_no;
    }

    public String getPrevious_product_qna_title() {
        return previous_product_qna_title;
    }

    public void setPrevious_product_qna_title(String previous_product_qna_title) {
        this.previous_product_qna_title = previous_product_qna_title;
    }

    public String getPrevious_product_qna_state() {
        return previous_product_qna_state;
    }

    public void setPrevious_product_qna_state(String previous_product_qna_state) {
        this.previous_product_qna_state = previous_product_qna_state;
    }

    public String getNext_product_qna_no() {
        return next_product_qna_no;
    }

    public void setNext_product_qna_no(String next_product_qna_no) {
        this.next_product_qna_no = next_product_qna_no;
    }

    public String getNext_product_qna_title() {
        return next_product_qna_title;
    }

    public void setNext_product_qna_title(String next_product_qna_title) {
        this.next_product_qna_title = next_product_qna_title;
    }

    public String getNext_product_qna_state() {
        return next_product_qna_state;
    }

    public void setNext_product_qna_state(String next_product_qna_state) {
        this.next_product_qna_state = next_product_qna_state;
    }
}
