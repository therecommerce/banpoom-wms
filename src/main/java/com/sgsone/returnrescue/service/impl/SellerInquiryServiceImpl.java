package com.sgsone.returnrescue.service.impl;

import com.sgsone.returnrescue.dao.DirectProductSaleManagementDao;
import com.sgsone.returnrescue.dao.SellerInquiryDao;
import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.service.SellerInquiryService;
import com.sgsone.returnrescue.vo.QnaVO;
import com.sgsone.returnrescue.vo.SellerInquiryVO;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service
public class SellerInquiryServiceImpl implements SellerInquiryService {

    protected Log logger = LogFactory.getLog(AccountServiceImpl.class);

    @Autowired
    private ExceptionFactory exceptionFactory;

    @Autowired
    DirectProductSaleManagementDao directProductSaleManagementDao;

    @Autowired
    SellerInquiryDao sellerInquiryDao;

    public List<SellerInquiryVO> selectSellerInquiryList(Map<String, Object> params) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<SellerInquiryVO> sellerInquiryList = new ArrayList<>();

        try {
            sellerInquiryList = sellerInquiryDao.selectSellerInquiryList(params);
            return sellerInquiryList;

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    public SellerInquiryVO selectQnaSellerInquiryDetail(String param) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        SellerInquiryVO inquiryVO = new SellerInquiryVO();

        try {
            inquiryVO = sellerInquiryDao.selectQnaSellerInquiryDetail(param);
            return  inquiryVO;

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);

        }
        return null;
    }

    public Integer selectQnaSellerInquiryCount(Map<String, Object> params) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sellerInquiryDao.selectQnaSellerInquiryCount(params);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;

        }
    }

    public int insertSellerInquiryAnswer(SellerInquiryVO sellerInquiryVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sellerInquiryDao.insertSellerInquiryAnswer(sellerInquiryVO);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;

        }
    }

    public List<Integer> selectSellerInquiryImageQuestion(SellerInquiryVO sellerInquiryVO){
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try  {
            List<Integer> resultList = sellerInquiryDao.selectSellerInquiryImageQuestion(sellerInquiryVO);
            return resultList;
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    public List<Integer> selectSellerInquiryImageAnswer(SellerInquiryVO sellerInquiryVO){
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try  {
            List<Integer> resultList = sellerInquiryDao.selectSellerInquiryImageAnswer(sellerInquiryVO);
            return resultList;
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }
    public  int insertSellerInquiryAnswerImage(SellerInquiryVO sellerInquiryVO){
        return sellerInquiryDao.insertSellerInquiryAnswerImage(sellerInquiryVO);
    }

    public SellerInquiryVO selectQnaList(Map<String, Object> params) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        SellerInquiryVO inquiryVO = new SellerInquiryVO();

        try {
            inquiryVO = sellerInquiryDao.selectQnaList(params);
            return inquiryVO;
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }
}
