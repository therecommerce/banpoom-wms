package com.sgsone.returnrescue.service.impl;

import com.sgsone.returnrescue.dao.ConsignmentDao;
import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.service.ConsignmentService;
import com.sgsone.returnrescue.vo.*;
import org.apache.commons.math3.stat.descriptive.summary.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service("consignmentService")
public class ConsignmentServiceImpl implements ConsignmentService {

    @Autowired
    private ExceptionFactory exceptionFactory;

    @Autowired
    ConsignmentDao consignmentDao;


    @Override
    public ProductCountVO selectConsignmentProductCount() {
        ProductCountVO result = consignmentDao.selectConsignmentProductCount();
        return result;
    }

    @Override
    public List<ConsignmentVO> selectConsignmentList(Map<String, Object> parameterVO) {
        if(parameterVO.get("product_state") != null && parameterVO.get("product_state") != "" ){
            parameterVO.put("product_state",parameterVO.get("product_state").toString().split(","));
        }
        List<ConsignmentVO> resultList = consignmentDao.selectConsignmentList(parameterVO);
        return resultList;
    }

    @Override
    public int selectConsignmentListTotal(Map<String, Object> parameterVO) {
        int result = consignmentDao.selectConsignmentListTotal(parameterVO);
        return result;
    }

    @Override
    public ConsignmentVO selectConsignmentDetail(ConsignmentVO parameterVO) {
        ConsignmentVO result = consignmentDao.selectConsignmentDetail(parameterVO);
        return result;
    }

    @Override
    public List<ConsignmentVO> selectOptionList(ConsignmentVO parameterVO) {
        List<ConsignmentVO> resultList = consignmentDao.selectOptionList(parameterVO);
        return resultList;
    }

    @Override
    public int updateProductInfo(ConsignmentVO parameterVO) {
        int result = consignmentDao.updateProductInfo(parameterVO);
        return result;
    }
    @Override
    public int updateProductInspection(ConsignmentVO parameterVO) {
        int result = consignmentDao.updateProductInspection(parameterVO);
        return result;
    }


    @Override
    public List<ConsignmentVO> selectConsignmentSellingList(Map<String, Object> parameterVO) {
        if(parameterVO.get("product_state") != null && parameterVO.get("product_state") != "" ){
            parameterVO.put("product_state",parameterVO.get("product_state").toString().split(","));
        }
        List<ConsignmentVO> resultList = consignmentDao.selectConsignmentSellingList(parameterVO);
        return resultList;
    }

    @Override
    public int selectConsignmentSellingListTotal(Map<String, Object> parameterVO) {
        int result = consignmentDao.selectConsignmentSellingListTotal(parameterVO);
        return result;
    }

    @Override
    public ProductCountVO selectConsignmentProductSellingCount() {
        ProductCountVO result = consignmentDao.selectConsignmentProductSellingCount();
        return result;
    }


    @Override
    public List<DirectProductManagementVO> selectOrderDeliveryProductList(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<DirectProductManagementVO> resultList = new ArrayList<DirectProductManagementVO>();
        try {
            if(parameterVO.get("order_delivery_state") != null && parameterVO.get("order_delivery_state") != "" ){
                parameterVO.put("order_delivery_state",parameterVO.get("order_delivery_state").toString().split(","));
            }
            resultList = consignmentDao.selectOrderDeliveryProductList(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return resultList;
    }

    @Override
    public List<DirectProductManagementVO> selectTrackingNumberFlag(ProductListVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        List<DirectProductManagementVO> resultList = new ArrayList<>();
        try {
            resultList = consignmentDao.selectTrackingNumberFlag(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            resultList = null;
        }
        return resultList;
    }

    @Override
    public int updateTrackingNumberFlag(ProductListVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        int result = 0;

        try {
            result =  consignmentDao.updateTrackingNumberFlag(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            result = -1;
        }
        return result;
    }

    @Override
    public List<DirectProductManagementVO> selectTrackingNumber(ProductListVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return consignmentDao.selectTrackingNumber(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    @Override
    public List<Map<String, Object>> selectDeliveryInfo(ProductListVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return consignmentDao.selectDeliveryInfo(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    @Override
    public DirectProductManagementVO selectOrderDeliveryDetail(ProductListVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        DirectProductManagementVO result = null;
        try {
            result = consignmentDao.selectOrderDeliveryDetail(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return result;
    }

    @Override
    public int selectOrderDeliveryProductListTotal(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        int result = 0;
        try {
            result = consignmentDao.selectOrderDeliveryProductListTotal(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return result;
    }

    @Override
    public DirectProductManagementVO selectConsignDeliveryCount() {
        return consignmentDao.selectConsignDeliveryCount();
    }

    @Override
    public DirectProductManagementVO selectConsignmentReturnCount() {
        return consignmentDao.selectConsignmentReturnCount();
    }

    @Override
    public List<DirectProductManagementVO> selectReturnDeliveryProductList(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<DirectProductManagementVO> resultList = new ArrayList<DirectProductManagementVO>();
        try {
            if(parameterVO.get("return_delivery_state") != null && parameterVO.get("return_delivery_state") != "" ){
                parameterVO.put("return_delivery_state",parameterVO.get("return_delivery_state").toString().split(","));
            }
            resultList = consignmentDao.selectReturnDeliveryProductList(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return resultList;
    }

    @Override
    public int selectReturnDeliveryProductListTotal(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        int result = 0;
        try {
            result = consignmentDao.selectReturnDeliveryProductListTotal(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return result;
    }

    @Override
    public int minusProductCount(ProductListVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return consignmentDao.minusProductCount(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }

    @Override
    public int selectProductCount(ProductListVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        int result = 0;

        try {
            result = consignmentDao.selectProductCount(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
        return result;
    }
    public int insertDeliveryOrderConsign(ProductListVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        int result = 0;

        try {
            consignmentDao.insertDeliveryOrderConsign(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
        return result;
    }

    @Override
    public int insertDeliveryRequestReturnDelivery(ProductListVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        int result = 0;

        try {
            consignmentDao.insertDeliveryRequestReturnDelivery(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
        return result;
    }

    @Override
    public int selectProductDeliveryInfo(ProductListVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return consignmentDao.selectProductDeliveryInfo(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }

    public int insertExcelDeliveryOrder(ProductListVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        int result = 0;

        try {
            consignmentDao.insertExcelDeliveryOrder(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
        return result;
    }

    @Override
    public int insertExcelDeliveryOrderReturnDelivery(ProductListVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        int result = 0;

        try {
            consignmentDao.insertExcelDeliveryOrderReturnDelivery(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
        return result;
    }

    @Override
    public ProductListVO selectDeliveryNumber(ProductListVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return consignmentDao.selectDeliveryNumber(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    @Override
    public List<HistoryVO> selectDeliveryHistory(ProductListVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return consignmentDao.selectDeliveryHistory(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    @Override
    public int insertDeliveryHistory(ProductListVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        int result = 0;

        try {
            consignmentDao.insertDeliveryHistory(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
        return result;
    }

    @Override
    public int deleteDeliveryHistory(ProductListVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return consignmentDao.deleteDeliveryHistory(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }

    @Override
    public int updateProductSellType(ProductListVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        int result = 0;

        try {
            consignmentDao.updateProductSellType(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
        return result;
    }

    public int updatePostInfo(DirectProductManagementVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return consignmentDao.updatePostInfo(parameterVO);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }

    @Override
    public int updatePostTrackingNumber(DirectProductManagementVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return consignmentDao.updatePostTrackingNumber(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }

    public int updatePostState(DirectProductManagementVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return consignmentDao.updatePostState(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }

    public int insertSellingState(DirectProductManagementVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return consignmentDao.insertSellingState(parameterVO);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }

    public List<ProductListVO> selectTrackingPrintContent(ProductListVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            List<ProductListVO> trakingPrintContent = consignmentDao.selectTrackingPrintContent(parameterVO);
            return trakingPrintContent;

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    @Override
    public int insertProductOption(ConsignmentVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return consignmentDao.insertProductOption(parameterVO);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);

        }
        return -1;
    }

    @Override
    public int deleteOptionList(ConsignmentVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return consignmentDao.deleteOptionList(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return -1;
    }

    @Override
    public int insertProductOptionList(ConsignmentVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return consignmentDao.insertProductOptionList(parameterVO);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return -1;
    }


    @Override
    public ConsignmentVO selectOptionName(ConsignmentVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
             return consignmentDao.selectOptionName(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    @Override
    public List<ConsignmentVO> selectOptionPrice(ConsignmentVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return consignmentDao.selectOptionPrice(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }
}
