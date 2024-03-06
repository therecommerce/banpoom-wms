package com.sgsone.returnrescue.dao;

import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.vo.SellerInquiryVO;
import com.sgsone.returnrescue.vo.UserInquiryVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Repository
public class UserInquiryDao {

    @Autowired
    private ExceptionFactory exceptionFactory;

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    public List<UserInquiryVO> selectUserInquiryList(Map<String, Object> params) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<UserInquiryVO> userInquiryVOList = new ArrayList<>();

        try {
            userInquiryVOList = sqlSessionTemplate.selectList("userInquiry.selectUserInquiryList", params);
            return userInquiryVOList;

        } catch (Exception e) {

            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    public UserInquiryVO selectQnaUserInquiryDetail(String param) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.selectOne("userInquiry.selectQnaUserInquiryDetail", param);

        } catch (Exception e) {

            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    public Integer selectQnaUserInquiryCount(Map<String, Object> params) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.selectOne("userInquiry.selectQnaUserInquiryCount", params);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    public int insertUserInquiryAnswer(UserInquiryVO userInquiryVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.update("userInquiry.insertUserInquiryAnswer", userInquiryVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }

    public List<Integer> selectUserInquiryImageQuestion(UserInquiryVO userInquiryVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<Integer> resultList= null;

        try {
            resultList = sqlSessionTemplate.selectList("userInquiry.selectUserInquiryImageQuestion", userInquiryVO);
        }catch(Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
        return resultList;
    }

    public List<Integer> selectUserInquiryImageAnswer(UserInquiryVO userInquiryVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<Integer> resultList= null;

        try {
            resultList = sqlSessionTemplate.selectList("userInquiry.selectUserInquiryImageAnswer", userInquiryVO);
        }catch(Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
        return resultList;
    }
    public int insertUserInquiryAnswerImage(UserInquiryVO userInquiryVO) {
        return sqlSessionTemplate.insert("userInquiry.insertUserInquiryAnswerImage", userInquiryVO);
    }

}
