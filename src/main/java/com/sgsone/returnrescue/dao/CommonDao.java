package com.sgsone.returnrescue.dao;

import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.vo.*;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CommonDao {

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    @Autowired
    private ExceptionFactory exceptionFactory;

    public List<CategoryVO> selectCategoryList(String category_id) {
        return sqlSessionTemplate.selectList("common.selectCategoryList",category_id);
    }

    public List<ChangePriceVO> selectChangePriceList(String product_id) {
        return sqlSessionTemplate.selectList("common.selectChangePriceList",product_id);
    }

    public int insertDeliveryInfo(Object parameterVO) {
        return sqlSessionTemplate.insert("common.insertDeliveryInfo",parameterVO);
    }

    public int insertChangePrice(Object parameterVO) {
        sqlSessionTemplate.update("common.updateChangePrice",parameterVO);
        return sqlSessionTemplate.insert("common.insertChangePrice",parameterVO);
    }

    public List<FileVO> selectInspectionFileList(String product_id) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        try {
            return sqlSessionTemplate.selectList("common.selectInspectionFileList", product_id);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    public List<FileVO> selectNoticeFileList(String notice_no) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        try {
            return sqlSessionTemplate.selectList("common.selectNoticeFileList", notice_no);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    public CountVO selectTotalCount() {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        try {
            return sqlSessionTemplate.selectOne("common.selectTotalCount");

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    public CountVO selectDeliveryCount() {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        try {
            return sqlSessionTemplate.selectOne("common.selectDeliveryCount");
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    public int batchProductPrice() {
        sqlSessionTemplate.update("common.batchUpdateProductPrice");
        return sqlSessionTemplate.insert("common.batchInsertProductPrice");
    }

    public List<Integer> selectProductImage(String product_id) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<Integer> resultList= null;

        try {
            resultList = sqlSessionTemplate.selectList("common.selectProductImage", product_id);
        }catch(Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
        return resultList;
    }
}
