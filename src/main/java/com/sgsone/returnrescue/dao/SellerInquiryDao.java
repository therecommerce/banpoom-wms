package com.sgsone.returnrescue.dao;

import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.vo.QnaVO;
import com.sgsone.returnrescue.vo.SellerInquiryVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Repository
public class SellerInquiryDao {

    @Autowired
    private ExceptionFactory exceptionFactory;

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    public List<SellerInquiryVO> selectSellerInquiryList(Map<String, Object> params) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<SellerInquiryVO> sellerInquiryList = new ArrayList<>();

        try {
            sellerInquiryList = sqlSessionTemplate.selectList("sellerInquiry.selectSellerInquiryList", params);
            return sellerInquiryList;

        } catch (Exception e) {

            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    public SellerInquiryVO selectQnaSellerInquiryDetail(String param) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.selectOne("sellerInquiry.selectQnaSellerInquiryDetail", param);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    public Integer selectQnaSellerInquiryCount(Map<String, Object> params) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.selectOne("sellerInquiry.selectQnaSellerInquiryCount", params);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;

        }
    }

    public int insertSellerInquiryAnswer(SellerInquiryVO sellerInquiryVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.update("sellerInquiry.insertSellerInquiryAnswer", sellerInquiryVO);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;

        }
    }

    public List<Integer> selectSellerInquiryImageQuestion(SellerInquiryVO sellerInquiryVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<Integer> resultList= null;

        try {
            resultList = sqlSessionTemplate.selectList("sellerInquiry.selectSellerInquiryImageQuestion", sellerInquiryVO);
        }catch(Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
        return resultList;
    }

    public List<Integer> selectSellerInquiryImageAnswer(SellerInquiryVO sellerInquiryVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<Integer> resultList= null;

        try {
            resultList = sqlSessionTemplate.selectList("sellerInquiry.selectSellerInquiryImageAnswer", sellerInquiryVO);
        }catch(Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
        return resultList;
    }

    public int insertSellerInquiryAnswerImage(SellerInquiryVO sellerInquiryVO) {
        return sqlSessionTemplate.insert("sellerInquiry.insertSellerInquiryAnswerImage", sellerInquiryVO);
    }

    public SellerInquiryVO selectQnaList(Map<String, Object> params) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.selectOne("sellerInquiry.selectQnaList", params);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }
}
