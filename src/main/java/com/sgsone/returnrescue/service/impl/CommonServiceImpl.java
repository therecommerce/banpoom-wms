package com.sgsone.returnrescue.service.impl;

import com.sgsone.returnrescue.dao.CommonDao;
import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.service.CommonService;
import com.sgsone.returnrescue.vo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("categoryService")
public class CommonServiceImpl implements CommonService {

    @Autowired
    CommonDao commonDao;

    @Autowired
    private ExceptionFactory exceptionFactory;

    @Override
    public List<CategoryVO> selectCategoryList(String category_id) {
        List<CategoryVO> categoryName = commonDao.selectCategoryList(category_id);
        return categoryName;
    }


    @Override
    public List<ChangePriceVO> selectChangePriceList(String product_id) {
        List<ChangePriceVO> resultList = commonDao.selectChangePriceList(product_id);
        return resultList;
    }

    @Override
    public int insertDeliveryInfo(Object parameterVO) {
        int result = commonDao.insertDeliveryInfo(parameterVO);
        return result;
    }

    @Override
    public int insertChangePrice(Object parameterVO) {
        int result = commonDao.insertChangePrice(parameterVO);
        return result;
    }

    @Override
    public List<FileVO> selectInspectionFileList(String product_id) {
        List<FileVO> resultList = commonDao.selectInspectionFileList(product_id);
        return resultList;
    }

    @Override
    public List<FileVO> selectNoticeFileList(String notice_no) {
        List<FileVO> resultList = commonDao.selectNoticeFileList(notice_no);
        return resultList;
    }

    @Override
    public CountVO selectTotalCount() {
        return commonDao.selectTotalCount();
    }

    @Override
    public CountVO selectDeliveryCount() {
        return commonDao.selectDeliveryCount();
    }

    @Override
    public int batchProductPrice() {
        return commonDao.batchProductPrice();
    }

    @Override
    public List<Integer> selectProductImage(String product_id){
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try  {
            List<Integer> resultList = commonDao.selectProductImage(product_id);
            return resultList;
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }
}
