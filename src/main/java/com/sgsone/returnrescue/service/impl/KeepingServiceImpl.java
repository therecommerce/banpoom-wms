package com.sgsone.returnrescue.service.impl;

import com.sgsone.returnrescue.dao.ConsignmentDao;
import com.sgsone.returnrescue.dao.KeepingDao;
import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.service.ConsignmentService;
import com.sgsone.returnrescue.service.KeepingService;
import com.sgsone.returnrescue.vo.ConsignmentVO;
import com.sgsone.returnrescue.vo.DirectProductManagementVO;
import com.sgsone.returnrescue.vo.ProductCountVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service("keepingService")
public class KeepingServiceImpl implements KeepingService {

    @Autowired
    private ExceptionFactory exceptionFactory;

    @Autowired
    KeepingDao keepingDao;


    @Override
    public ProductCountVO selectKeepingProductCount() {
        ProductCountVO result = keepingDao.selectKeepingProductCount();
        return result;
    }

    @Override
    public List<ConsignmentVO> selectKeepingProductList(Map<String, Object> parameterVO) {
        if(parameterVO.get("product_state") != null && parameterVO.get("product_state") != "" ){
            parameterVO.put("product_state",parameterVO.get("product_state").toString().split(","));
        }
        List<ConsignmentVO> resultList = keepingDao.selectKeepingProductList(parameterVO);
        return resultList;
    }

    @Override
    public int selectKeepingProductListTotal(Map<String, Object> parameterVO) {
        int result = keepingDao.selectKeepingProductListTotal(parameterVO);
        return result;
    }
//
//    @Override
//    public ConsignmentVO selectConsignmentDetail(ConsignmentVO parameterVO) {
//        ConsignmentVO result = consignmentDao.selectConsignmentDetail(parameterVO);
//        return result;
//    }
//
//    @Override
//    public int updateProductInfo(ConsignmentVO parameterVO) {
//        int result = consignmentDao.updateProductInfo(parameterVO);
//        return result;
//    }
//    @Override
//    public int updateProductInspection(ConsignmentVO parameterVO) {
//        int result = consignmentDao.updateProductInspection(parameterVO);
//        return result;
//    }
//
//
//    @Override
//    public List<ConsignmentVO> selectConsignmentSellingList(Map<String, Object> parameterVO) {
//        if(parameterVO.get("product_state") != null && parameterVO.get("product_state") != "" ){
//            parameterVO.put("product_state",parameterVO.get("product_state").toString().split(","));
//        }
//        List<ConsignmentVO> resultList = consignmentDao.selectConsignmentSellingList(parameterVO);
//        return resultList;
//    }
//
//    @Override
//    public int selectConsignmentSellingListTotal(Map<String, Object> parameterVO) {
//        int result = consignmentDao.selectConsignmentSellingListTotal(parameterVO);
//        return result;
//    }
//
//    @Override
//    public ProductCountVO selectConsignmentProductSellingCount() {
//        ProductCountVO result = consignmentDao.selectConsignmentProductSellingCount();
//        return result;
//    }
//

    @Override
    public List<DirectProductManagementVO> selectKeepingDeliveryProductList(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<DirectProductManagementVO> resultList = new ArrayList<DirectProductManagementVO>();
        try {
            if(parameterVO.get("order_delivery_state") != null && parameterVO.get("order_delivery_state") != "" ){
                parameterVO.put("order_delivery_state",parameterVO.get("order_delivery_state").toString().split(","));
            }
            resultList = keepingDao.selectKeepingDeliveryProductList(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return resultList;
    }

    @Override
    public int selectKeepingDeliveryProductListTotal(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        int result = 0;
        try {
            result = keepingDao.selectKeepingDeliveryProductListTotal(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return result;
    }

    @Override
    public DirectProductManagementVO selectKeepingDeliveryCount() {
        return keepingDao.selectKeepingDeliveryCount();
    }

//    @Override
//    public DirectProductManagementVO selectConsignmentReturnCount() {
//        return consignmentDao.selectConsignmentReturnCount();
//    }
//
//    @Override
//    public List<DirectProductManagementVO> selectReturnDeliveryProductList(Map<String, Object> parameterVO) {
//        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
//        List<DirectProductManagementVO> resultList = new ArrayList<DirectProductManagementVO>();
//        try {
//            if(parameterVO.get("return_delivery_state") != null && parameterVO.get("return_delivery_state") != "" ){
//                parameterVO.put("return_delivery_state",parameterVO.get("return_delivery_state").toString().split(","));
//            }
//            resultList = consignmentDao.selectReturnDeliveryProductList(parameterVO);
//        } catch (Exception e) {
//            exceptionFactory.commonException(e, whoAmi);
//        }
//        return resultList;
//    }
//
//    @Override
//    public int selectReturnDeliveryProductListTotal(Map<String, Object> parameterVO) {
//        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
//        int result = 0;
//        try {
//            result = consignmentDao.selectReturnDeliveryProductListTotal(parameterVO);
//        } catch (Exception e) {
//            exceptionFactory.commonException(e, whoAmi);
//        }
//        return result;
//    }
}
