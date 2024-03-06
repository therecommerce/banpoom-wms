package com.sgsone.returnrescue.dao;

import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.vo.QnaVO;
import com.sgsone.returnrescue.vo.ReviewVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Repository
public class ReviewDao {

    @Autowired
    private ExceptionFactory exceptionFactory;

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    public List<ReviewVO> selectReviewList(Map<String, Object> params) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<ReviewVO> reviewVOList = new ArrayList<>();

        try {
            reviewVOList = sqlSessionTemplate.selectList("review.selectReviewList", params);
            return reviewVOList;

        } catch (Exception e) {

            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    public Integer selectReviewListCount(Map<String, Object> params) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.selectOne("review.selectReviewListCount", params);

        } catch (Exception e) {

            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    public ReviewVO selectReviewModal(String review_no) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.selectOne("review.selectReviewModal", review_no);

        } catch (Exception e) {

            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    public int updateBestReview(ReviewVO reviewVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.update("review.updateBestReview", reviewVO);

        } catch (Exception e) {

            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }

    public int deleteReview(ReviewVO reviewVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.delete("review.deleteReview", reviewVO);

        } catch (Exception e) {

            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }

    public List<Integer> selectReviewImageQuestion(ReviewVO reviewVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<Integer> resultList= null;

        try {
            resultList = sqlSessionTemplate.selectList("review.selectReviewImageQuestion", reviewVO);
        }catch(Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
        return resultList;
    }

    public int updateReviewAnswer(ReviewVO reviewVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.delete("review.updateReviewAnswer", reviewVO);

        } catch (Exception e) {

            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }

}
