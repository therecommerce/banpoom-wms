package com.sgsone.returnrescue.service.impl;

import com.sgsone.returnrescue.dao.DirectProductSaleManagementDao;
import com.sgsone.returnrescue.dao.ReviewDao;
import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.service.ReviewService;
import com.sgsone.returnrescue.vo.QnaVO;
import com.sgsone.returnrescue.vo.ReviewVO;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service
public class ReviewServiceImpl implements ReviewService {

    protected Log logger = LogFactory.getLog(AccountServiceImpl.class);

    @Autowired
    private ExceptionFactory exceptionFactory;

    @Autowired
    DirectProductSaleManagementDao directProductSaleManagementDao;

    @Autowired
    ReviewDao reviewDao;

    public List<ReviewVO> selectReviewList(Map<String, Object> params) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<ReviewVO> reviewVOList = new ArrayList<>();

        try {
            reviewVOList = reviewDao.selectReviewList(params);
            return reviewVOList;

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    public Integer selectReviewListCount(Map<String, Object> params) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return reviewDao.selectReviewListCount(params);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    public ReviewVO selectReviewModal(String review_no) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return reviewDao.selectReviewModal(review_no);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    public int updateBestReview(ReviewVO reviewVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return reviewDao.updateBestReview(reviewVO);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }

    public int deleteReview(ReviewVO reviewVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return reviewDao.deleteReview(reviewVO);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }

    public List<Integer> selectReviewImageQuestion(ReviewVO reviewVO){
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try  {
            List<Integer> resultList = reviewDao.selectReviewImageQuestion(reviewVO);
            return resultList;
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    public int updateReviewAnswer(ReviewVO reviewVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return reviewDao.updateReviewAnswer(reviewVO);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }

}
