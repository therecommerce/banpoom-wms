package com.sgsone.returnrescue.service.impl;

import com.sgsone.returnrescue.dao.DirectProductSaleManagementDao;
import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.service.DirectProductSaleManagementService;
import com.sgsone.returnrescue.vo.CalculateVO;
import com.sgsone.returnrescue.vo.DirectProductManagementVO;
import com.sgsone.returnrescue.vo.HistoryVO;
import com.sgsone.returnrescue.vo.OrderDecideVO;
import com.sgsone.returnrescue.vo.ProductListVO;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service("directProductSaleManagementService")
public class DirectProductSaleManagementServiceImpl implements DirectProductSaleManagementService {

    protected Log logger = LogFactory.getLog(AccountServiceImpl.class);
    @Autowired
    private ExceptionFactory exceptionFactory;
    @Autowired
    DirectProductSaleManagementDao directProductSaleManagementDao;

    @Override
    public List<DirectProductManagementVO> selectDirectSaleList(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<DirectProductManagementVO> resultList = new ArrayList<DirectProductManagementVO>();
        try {
            if(parameterVO.get("product_state") != null && parameterVO.get("product_state") != "" ){
                parameterVO.put("product_state",parameterVO.get("product_state").toString().split(","));
            }
            resultList = directProductSaleManagementDao.selectDirectSaleList(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return resultList;
    }

    @Override
    public DirectProductManagementVO getDirectProductCount() {
        return directProductSaleManagementDao.getDirectProductCount();
    }

    @Override
    public List<DirectProductManagementVO> getCategoryNameList() {
        List<DirectProductManagementVO> categoryName = directProductSaleManagementDao.getCategoryNameList();
        return categoryName;
    }

    @Override
    public int selectDirectSaleListTotal(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        int result = 0;
        try {
            result = directProductSaleManagementDao.selectDirectSaleListTotal(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return result;
    }

    @Override
    public DirectProductManagementVO getDirectProductDetail(String product_id) {

        return directProductSaleManagementDao.getDirectProductDetail(product_id);
    }

    public List<HistoryVO> selectHistoryProduct(String product_id) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<HistoryVO> resultList = new ArrayList<>();
        try {
            resultList = directProductSaleManagementDao.selectHistoryProduct(product_id);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return resultList;
    }

    @Override
    public int updateDirectProductInfo(DirectProductManagementVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return directProductSaleManagementDao.updateDirectProductInfo(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return -1;
    }

    @Override
    public int updateDirectProductDeliveryInfo(DirectProductManagementVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return directProductSaleManagementDao.updateDirectProductDeliveryInfo(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return -1;
    }

    @Override
    public int updateProductStatus(DirectProductManagementVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return directProductSaleManagementDao.updateProductStatus(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return -1;
    }

    @Override
    public int insertChangeProductState(DirectProductManagementVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return directProductSaleManagementDao.insertChangeProductState(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return -1;
    }

    @Override
    public int changeDirectProductStatus(DirectProductManagementVO params) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return directProductSaleManagementDao.changeDirectProductStatus(params);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return -1;
    }

    @Override
    public List<DirectProductManagementVO> selectOrderDeliveryProductList(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<DirectProductManagementVO> resultList = new ArrayList<DirectProductManagementVO>();
        try {
            if(parameterVO.get("order_delivery_state") != null && parameterVO.get("order_delivery_state") != "" ){
                parameterVO.put("order_delivery_state",parameterVO.get("order_delivery_state").toString().split(","));
            }
            resultList = directProductSaleManagementDao.selectOrderDeliveryProductList(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return resultList;
    }

    @Override
    public int selectOrderDeliveryProductListTotal(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        int result = 0;
        try {
            result = directProductSaleManagementDao.selectOrderDeliveryProductListTotal(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return result;
    }

    @Override
    public DirectProductManagementVO getDeliveryCount() {
        return directProductSaleManagementDao.getDeliveryCount();
    }

    @Override
    public DirectProductManagementVO getReturnCount() {
        return directProductSaleManagementDao.getReturnCount();
    }

    @Override
    public List<DirectProductManagementVO> selectReturnDeliveryProductList(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<DirectProductManagementVO> resultList = new ArrayList<DirectProductManagementVO>();
        try {
            if(parameterVO.get("return_delivery_state") != null && parameterVO.get("return_delivery_state") != "" ){
                parameterVO.put("return_delivery_state",parameterVO.get("return_delivery_state").toString().split(","));
            }
            resultList = directProductSaleManagementDao.selectReturnDeliveryProductList(parameterVO);
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
            result = directProductSaleManagementDao.selectReturnDeliveryProductListTotal(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return result;
    }

    @Override
    public int orderDeliveryStatus(DirectProductManagementVO params) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return directProductSaleManagementDao.orderDeliveryStatus(params);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return -1;
    }

    @Override
    public int orderReturnStatus(DirectProductManagementVO params) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return directProductSaleManagementDao.orderReturnStatus(params);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return -1;
    }

    @Override
    public int insertHistoryDelivery(DirectProductManagementVO params) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return directProductSaleManagementDao.insertHistoryDelivery(params);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return -1;
    }

    public int updateOrderDecide(DirectProductManagementVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return directProductSaleManagementDao.updateOrderDecide(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }

    public int updateOrderDecideCancel(DirectProductManagementVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return directProductSaleManagementDao.updateOrderDecideCancel(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }


    public int insertCalculateInfo(DirectProductManagementVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return directProductSaleManagementDao.insertCalculateInfo(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }


    public int deleteCalculateInfo(DirectProductManagementVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return directProductSaleManagementDao.deleteCalculateInfo(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }


    public DirectProductManagementVO selectCalculateForProductId(DirectProductManagementVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return directProductSaleManagementDao.selectCalculateForProductId(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }


    public DirectProductManagementVO selectSameMonthCode(DirectProductManagementVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return directProductSaleManagementDao.selectSameMonthCode(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    public DirectProductManagementVO selectIsKeeping(DirectProductManagementVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return directProductSaleManagementDao.selectIsKeeping(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }


    public int insertCalculateDetail(List<Integer> order_request_list){
        List<OrderDecideVO> orderDecideVOList = new ArrayList<>();
        for(Integer delivery_no : order_request_list){
            OrderDecideVO orderDecideVO = new OrderDecideVO();
            orderDecideVO.setDelivery_no(delivery_no);
            String cal_no = directProductSaleManagementDao.selectCalNo(delivery_no);
            if(cal_no != null){
                orderDecideVO.setCal_no(cal_no);
                orderDecideVOList.add(orderDecideVO);
            } else {
                directProductSaleManagementDao.insertCalculate(orderDecideVO);
                orderDecideVOList.add(orderDecideVO);
            }
        }
        int resultCnt = 0;
        for(OrderDecideVO orderDecideVO : orderDecideVOList){
            directProductSaleManagementDao.insertCalculateDetail(orderDecideVO);
            resultCnt++;
        }

        return resultCnt;
    }

}
