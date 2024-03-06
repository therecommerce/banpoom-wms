package com.sgsone.returnrescue.service.impl;

import com.sgsone.returnrescue.dao.StartSellerDao;
import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.service.StartSellerService;
import com.sgsone.returnrescue.vo.QnaVO;
import com.sgsone.returnrescue.vo.SellerInquiryVO;
import com.sgsone.returnrescue.vo.StartSellerVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service
public class StartSellerServiceImpl implements StartSellerService {

    @Autowired
    private StartSellerDao startSellerDao;

    @Autowired
    private ExceptionFactory exceptionFactory;


    public List<StartSellerVO> selectStartSellerBoardList(Map<String, Object> params) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<StartSellerVO> startSellerVOList = new ArrayList<>();

        try {
            startSellerVOList = startSellerDao.selectStartSellerBoardList(params);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);

        }
        return startSellerVOList;
    }

    public Integer selectStartSellerBoardTotal(Map<String, Object> params) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return startSellerDao.selectStartSellerBoardTotal(params);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;

        }
    }

    public StartSellerVO selectStartSellerQnaDetail(String startseller_qna_no) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        StartSellerVO startSellerVO = new StartSellerVO();
        try {
            startSellerVO = startSellerDao.selectStartSellerQnaDetail(startseller_qna_no);
            return startSellerVO;
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    public int updateStartSellerAnswer(StartSellerVO startSellerVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return startSellerDao.updateStartSellerAnswer(startSellerVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }

    public int insertStartSellerAnswerImage(StartSellerVO startSellerVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return startSellerDao.insertStartSellerAnswerImage(startSellerVO);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }

    public List<Integer> selectStartSellerQuestionImage(StartSellerVO startSellerVO){
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try  {
            List<Integer> resultList = startSellerDao.selectStartSellerQuestionImage(startSellerVO);
            return resultList;
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    public List<Integer> selectStartSellerAnswerImage(StartSellerVO startSellerVO){
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try  {
            List<Integer> resultList = startSellerDao.selectStartSellerAnswerImage(startSellerVO);
            return resultList;
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }
}
