package com.sgsone.returnrescue.dao;

import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.vo.*;
import org.apache.commons.math3.stat.descriptive.summary.Product;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Repository
public class ConsignmentDao {

    @Autowired
    private ExceptionFactory exceptionFactory;

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    public ProductCountVO selectConsignmentProductCount() {
        return sqlSessionTemplate.selectOne("consignment.selectConsignmentProductCount");
    }

    public List<ConsignmentVO> selectConsignmentList(Map<String, Object> parameterVO) {
        return sqlSessionTemplate.selectList("consignment.selectConsignmentList", parameterVO);
    }

    public int selectConsignmentListTotal(Map<String, Object> parameterVO) {
        return sqlSessionTemplate.selectOne("consignment.selectConsignmentListTotal", parameterVO);
    }

    public ConsignmentVO selectConsignmentDetail(ConsignmentVO parameterVO){
        return sqlSessionTemplate.selectOne("consignment.selectConsignmentDetail", parameterVO);
    }

    public List<ConsignmentVO> selectOptionList(ConsignmentVO parameterVO) {
        return sqlSessionTemplate.selectList("consignment.selectOptionList", parameterVO);
    }

    public int  updateProductInfo(ConsignmentVO parameterVO){
        return sqlSessionTemplate.update("consignment.updateProductInfo", parameterVO);
    }

    public int  updateProductInspection(ConsignmentVO parameterVO){
        return sqlSessionTemplate.update("consignment.updateProductInspection", parameterVO);
    }

    public List<ConsignmentVO> selectConsignmentSellingList(Map<String, Object> parameterVO) {
        return sqlSessionTemplate.selectList("consignment.selectConsignmentSellingList", parameterVO);
    }

    public int selectConsignmentSellingListTotal(Map<String, Object> parameterVO) {
        return sqlSessionTemplate.selectOne("consignment.selectConsignmentSellingListTotal", parameterVO);
    }

    public ProductCountVO selectConsignmentProductSellingCount() {
        return sqlSessionTemplate.selectOne("consignment.selectConsignmentProductSellingCount");
    }


    public List<DirectProductManagementVO> selectOrderDeliveryProductList(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<DirectProductManagementVO> resultList = new ArrayList<DirectProductManagementVO>();
        try {
            resultList = sqlSessionTemplate.selectList("consignment.selectOrderDeliveryProductList", parameterVO);
        } catch (Exception e) {

            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
        return resultList;
    }

    public List<DirectProductManagementVO> selectTrackingNumberFlag(ProductListVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        List<DirectProductManagementVO> resultList = new ArrayList<>();

        try {
            resultList = sqlSessionTemplate.selectList("consignment.selectTrackingNumberFlag", parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            resultList = null;
        }
        return resultList;
    }

    public int updateTrackingNumberFlag(ProductListVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        int result = 0;

        try {
            sqlSessionTemplate.update("consignment.updateTrackingNumberFlag", parameterVO);
            result = 1;
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            result = -1;
        }
        return result;
    }

    public List<DirectProductManagementVO> selectTrackingNumber(ProductListVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.selectList("consignment.selectTrackingNumber", parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    public List<Map<String, Object>> selectDeliveryInfo(ProductListVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.selectList("consignment.selectDeliveryInfo", parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }


    public DirectProductManagementVO selectOrderDeliveryDetail(ProductListVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        DirectProductManagementVO result = null;
        try {
            result = sqlSessionTemplate.selectOne("consignment.selectOrderDeliveryDetail", parameterVO);
        } catch (Exception e) {

            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
        return result;
    }



    public int selectOrderDeliveryProductListTotal(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        int result = 0;
        try {
            result = sqlSessionTemplate.selectOne("consignment.selectOrderDeliveryProductListTotal", parameterVO);

        } catch (Exception e) {

            exceptionFactory.commonException(e, whoAmi);
            return 0;
        }
        return result;
    }

    public DirectProductManagementVO selectConsignDeliveryCount() {
        return sqlSessionTemplate.selectOne("consignment.selectConsignDeliveryCount");
    }

    public DirectProductManagementVO selectConsignmentReturnCount() {
        return sqlSessionTemplate.selectOne("consignment.selectConsignmentReturnCount");
    }

    public List<DirectProductManagementVO> selectReturnDeliveryProductList(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<DirectProductManagementVO> resultList = new ArrayList<DirectProductManagementVO>();
        try {
            resultList = sqlSessionTemplate.selectList("consignment.selectReturnDeliveryProductList", parameterVO);

        } catch (Exception e) {

            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
        return resultList;
    }

    public int selectReturnDeliveryProductListTotal(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        int result = 0;
        try {
            result = sqlSessionTemplate.selectOne("consignment.selectReturnDeliveryProductListTotal", parameterVO);

        } catch (Exception e) {

            exceptionFactory.commonException(e, whoAmi);
            return 0;
        }
        return result;
    }

    public int minusProductCount(ProductListVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.update("consignment.minusProductCount", parameterVO);
        } catch (Exception e) {
            return -1;
        }
    }

    public int selectProductCount(ProductListVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        int result = 0;

        try {
            result = sqlSessionTemplate.selectOne("consignment.selectProductCount", parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            result = -1;
        }
        return result;
    }

    public int insertDeliveryOrderConsign(ProductListVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        int result = 0;

        try {
            sqlSessionTemplate.insert("consignment.insertDeliveryOrderConsign", parameterVO);
            result = 0;
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
        return result;
    }

    public int insertDeliveryRequestReturnDelivery(ProductListVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        int result = 0;

        try {
            sqlSessionTemplate.insert("consignment.insertDeliveryRequestReturnDelivery", parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
        return result;
    }

    public int selectProductDeliveryInfo(ProductListVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.selectOne("consignment.selectProductDeliveryInfo", parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }

    public int insertExcelDeliveryOrder(ProductListVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        int result = 0;

        try {
            sqlSessionTemplate.insert("consignment.insertExcelDeliveryOrder", parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
        return result;
    }

    public int insertExcelDeliveryOrderReturnDelivery(ProductListVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        int result = 0;

        try {
            sqlSessionTemplate.insert("consignment.insertExcelDeliveryOrderReturnDelivery", parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
        return result;
    }

    public ProductListVO selectDeliveryNumber(ProductListVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.selectOne("consignment.selectDeliveryNumber", parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    public List<HistoryVO> selectDeliveryHistory(ProductListVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.selectList("consignment.selectDeliveryHistory", parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    public int insertDeliveryHistory(ProductListVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        int result = 0;

        try {
            sqlSessionTemplate.insert("consignment.insertDeliveryHistory", parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
        return result;
    }

    public int deleteDeliveryHistory(ProductListVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.delete("consignment.deleteDeliveryHistory", parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }

    public int updateProductSellType(ProductListVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        int result = 0;

        try {
            sqlSessionTemplate.update("consignment.updateProductSellType", parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
        return result;
    }

    public int updatePostInfo(DirectProductManagementVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.update("consignment.updatePostInfo", parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }

    public int updatePostTrackingNumber(DirectProductManagementVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.update("consignment.updatePostTrackingNumber", parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }

    public int updatePostState(DirectProductManagementVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.update("consignment.updatePostState", parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }

    public int insertSellingState(DirectProductManagementVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.insert("consignment.insertSellingState", parameterVO);

        } catch (Exception e)  {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }


    public List<ProductListVO> selectTrackingPrintContent(ProductListVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            List<ProductListVO> trakingPrintContent =  sqlSessionTemplate.selectList("consignment.selectTrackingPrintContent", parameterVO);
            return trakingPrintContent;

        } catch (Exception e)  {
            exceptionFactory.commonException(e, whoAmi);
            return null;

        }
    }

    public int insertProductOption(ConsignmentVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            sqlSessionTemplate.insert("consignment.insertProductOption", parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
        return 1;
    }

    public int deleteOptionList(ConsignmentVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            sqlSessionTemplate.delete("consignment.deleteOptionList", parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
        return 1;
    }

    public int insertProductOptionList(ConsignmentVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            sqlSessionTemplate.insert("consignment.insertProductOptionList", parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
        return 1;
    }

    public ConsignmentVO selectOptionName(ConsignmentVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.selectOne("consignment.selectOptionName", parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    public List<ConsignmentVO> selectOptionPrice(ConsignmentVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.selectList("consignment.selectOptionPrice", parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }
}
