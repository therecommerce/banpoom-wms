package com.sgsone.returnrescue.service.impl;

import com.sgsone.returnrescue.dao.DirectProductSaleManagementDao;
import com.sgsone.returnrescue.dao.UserInquiryDao;
import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.service.UserInquiryService;
import com.sgsone.returnrescue.vo.SellerInquiryVO;
import com.sgsone.returnrescue.vo.UserInquiryVO;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service
public class UserInquiryServiceImpl implements UserInquiryService {

    protected Log logger = LogFactory.getLog(AccountServiceImpl.class);

    @Autowired
    private ExceptionFactory exceptionFactory;

    @Autowired
    DirectProductSaleManagementDao directProductSaleManagementDao;
    @Autowired
    UserInquiryDao userInquiryDao;

    public List<UserInquiryVO> selectUserInquiryList(Map<String, Object> params) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<UserInquiryVO> userInquiryVOList = new ArrayList<>();

        try {
            userInquiryVOList = userInquiryDao.selectUserInquiryList(params);
            return userInquiryVOList;
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    public UserInquiryVO selectQnaUserInquiryDetail(String param) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        UserInquiryVO userInquiryVO = new UserInquiryVO();

        try {
            userInquiryVO = userInquiryDao.selectQnaUserInquiryDetail(param);
            return  userInquiryVO;
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return null;
    }

    public Integer selectQnaUserInquiryCount(Map<String, Object> params) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return userInquiryDao.selectQnaUserInquiryCount(params);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    public int insertUserInquiryAnswer(UserInquiryVO userInquiryVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return userInquiryDao.insertUserInquiryAnswer(userInquiryVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }

    public List<Integer> selectUserInquiryImageQuestion(UserInquiryVO userInquiryVO){
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try  {
            List<Integer> resultList = userInquiryDao.selectUserInquiryImageQuestion(userInquiryVO);
            return resultList;
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    public List<Integer> selectUserInquiryImageAnswer(UserInquiryVO userInquiryVO){
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try  {
            List<Integer> resultList = userInquiryDao.selectUserInquiryImageAnswer(userInquiryVO);
            return resultList;
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    public  int insertUserInquiryAnswerImage(UserInquiryVO userInquiryVO){
        return userInquiryDao.insertUserInquiryAnswerImage(userInquiryVO);
    }
}
