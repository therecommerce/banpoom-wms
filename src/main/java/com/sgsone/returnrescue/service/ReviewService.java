package com.sgsone.returnrescue.service;

import com.sgsone.returnrescue.vo.ReviewVO;

import java.util.List;
import java.util.Map;

public interface ReviewService {

    List<ReviewVO> selectReviewList(Map<String, Object> params);

    Integer selectReviewListCount(Map<String, Object> params);

    ReviewVO selectReviewModal(String review_no);

    int updateBestReview(ReviewVO reviewVO);

    int deleteReview(ReviewVO reviewVO);

    List<Integer> selectReviewImageQuestion(ReviewVO reviewVO);

    int updateReviewAnswer(ReviewVO reviewVO);
}
