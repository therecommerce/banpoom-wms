package com.sgsone.returnrescue.vo.naverVO;


public class ProductQnaAnswerRequestVO {

    private Long questionId;

   private String commentContent;

    public Long getQuestionId() {
        return questionId;
    }

    public void setQuestionId(Long questionId) {
        this.questionId = questionId;
    }

    public String getCommentContent() {
        return commentContent;
    }

    public void setCommentContent(String commentContent) {
        this.commentContent = commentContent;
    }
}
