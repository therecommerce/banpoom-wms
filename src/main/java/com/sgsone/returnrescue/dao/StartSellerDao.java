package com.sgsone.returnrescue.dao;

import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.vo.QnaVO;
import com.sgsone.returnrescue.vo.SellerInquiryVO;
import com.sgsone.returnrescue.vo.StartSellerVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Repository
public class StartSellerDao {

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    @Autowired
    private ExceptionFactory exceptionFactory;

    public List<StartSellerVO> selectStartSellerBoardList(Map<String, Object> params) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.selectList("StartSeller.selectStartSellerBoardList", params);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;

        }
    }

    public Integer selectStartSellerBoardTotal(Map<String, Object> params) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.selectOne("StartSeller.selectStartSellerBoardTotal", params);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }


    public StartSellerVO selectStartSellerQnaDetail(String startseller_qna_no) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.selectOne("StartSeller.selectStartSellerQnaDetail", startseller_qna_no);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    public int updateStartSellerAnswer(StartSellerVO startSellerVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.update("StartSeller.updateStartSellerAnswer", startSellerVO);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }

    public int insertStartSellerAnswerImage(StartSellerVO startSellerVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.insert("StartSeller.insertStartSellerAnswerImage", startSellerVO);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }

    public List<Integer> selectStartSellerQuestionImage(StartSellerVO startSellerVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<Integer> resultList= null;

        try {
            resultList = sqlSessionTemplate.selectList("StartSeller.selectStartSellerQuestionImage", startSellerVO);
        }catch(Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
        return resultList;
    }

    public List<Integer> selectStartSellerAnswerImage(StartSellerVO startSellerVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<Integer> resultList= null;

        try {
            resultList = sqlSessionTemplate.selectList("StartSeller.selectStartSellerAnswerImage", startSellerVO);
        }catch(Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
        return resultList;
    }
}
