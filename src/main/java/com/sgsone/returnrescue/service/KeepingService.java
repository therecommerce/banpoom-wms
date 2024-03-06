package com.sgsone.returnrescue.service;

import com.sgsone.returnrescue.vo.ConsignmentVO;
import com.sgsone.returnrescue.vo.DirectProductManagementVO;
import com.sgsone.returnrescue.vo.ProductCountVO;

import java.util.List;
import java.util.Map;

public interface KeepingService {
    ProductCountVO selectKeepingProductCount();
    List<ConsignmentVO> selectKeepingProductList(Map<String, Object> parameterVO);
    int selectKeepingProductListTotal(Map<String, Object> parameterVO);
//    ConsignmentVO selectConsignmentDetail(ConsignmentVO parameterVO);
//    int updateProductInfo(ConsignmentVO parameterVO);
//    int updateProductInspection(ConsignmentVO parameterVO);
//    List<ConsignmentVO> selectConsignmentSellingList(Map<String, Object> parameterVO);
//    int selectConsignmentSellingListTotal(Map<String, Object> parameterVO);
//    ProductCountVO selectConsignmentProductSellingCount();
//
    List<DirectProductManagementVO> selectKeepingDeliveryProductList(Map<String, Object> parameterVO);

    int selectKeepingDeliveryProductListTotal(Map<String, Object> parameterVO);
//
    DirectProductManagementVO selectKeepingDeliveryCount();
//
//    DirectProductManagementVO selectConsignmentReturnCount();
//
//    List<DirectProductManagementVO> selectReturnDeliveryProductList(Map<String, Object> parameterVO);
//
//    int selectReturnDeliveryProductListTotal(Map<String, Object> parameterVO);
}