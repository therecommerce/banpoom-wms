package com.sgsone.returnrescue.dao;

import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.vo.ConsignmentVO;
import com.sgsone.returnrescue.vo.DirectProductManagementVO;
import com.sgsone.returnrescue.vo.ProductCountVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Repository
public class KeepingDao {

    @Autowired
    private ExceptionFactory exceptionFactory;

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    public ProductCountVO selectKeepingProductCount() {
        return sqlSessionTemplate.selectOne("keeping.selectKeepingProductCount");
    }

    public List<ConsignmentVO> selectKeepingProductList(Map<String, Object> parameterVO) {
        return sqlSessionTemplate.selectList("keeping.selectKeepingProductList", parameterVO);
    }

    public int selectKeepingProductListTotal(Map<String, Object> parameterVO) {
        return sqlSessionTemplate.selectOne("keeping.selectKeepingProductListTotal", parameterVO);
    }
//
//    public ConsignmentVO selectConsignmentDetail(ConsignmentVO parameterVO){
//        return sqlSessionTemplate.selectOne("consignment.selectConsignmentDetail", parameterVO);
//    }
//
//    public int  updateProductInfo(ConsignmentVO parameterVO){
//        return sqlSessionTemplate.update("consignment.updateProductInfo", parameterVO);
//    }
//
//    public int  updateProductInspection(ConsignmentVO parameterVO){
//        return sqlSessionTemplate.update("consignment.updateProductInspection", parameterVO);
//    }
//
//    public List<ConsignmentVO> selectConsignmentSellingList(Map<String, Object> parameterVO) {
//        return sqlSessionTemplate.selectList("consignment.selectConsignmentSellingList", parameterVO);
//    }
//
//    public int selectConsignmentSellingListTotal(Map<String, Object> parameterVO) {
//        return sqlSessionTemplate.selectOne("consignment.selectConsignmentSellingListTotal", parameterVO);
//    }
//
//    public ProductCountVO selectConsignmentProductSellingCount() {
//        return sqlSessionTemplate.selectOne("consignment.selectConsignmentProductSellingCount");
//    }
//

    public List<DirectProductManagementVO> selectKeepingDeliveryProductList(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<DirectProductManagementVO> resultList = new ArrayList<DirectProductManagementVO>();
        try {
            resultList = sqlSessionTemplate.selectList("keeping.selectKeepingDeliveryProductList", parameterVO);

        } catch (Exception e) {

            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
        return resultList;
    }

    public int selectKeepingDeliveryProductListTotal(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        int result = 0;
        try {
            result = sqlSessionTemplate.selectOne("keeping.selectKeepingDeliveryProductListTotal", parameterVO);

        } catch (Exception e) {

            exceptionFactory.commonException(e, whoAmi);
            return 0;
        }
        return result;
    }

    public DirectProductManagementVO selectKeepingDeliveryCount() {
        return sqlSessionTemplate.selectOne("keeping.selectKeepingDeliveryCount");
    }

}
