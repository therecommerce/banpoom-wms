package com.sgsone.returnrescue.service;

import com.sgsone.returnrescue.vo.CalculateVO;
import com.sgsone.returnrescue.vo.DirectProductManagementVO;
import com.sgsone.returnrescue.vo.HistoryVO;
import com.sgsone.returnrescue.vo.OrderDecideVO;
import com.sgsone.returnrescue.vo.ProductListVO;

import java.util.List;
import java.util.Map;

public interface DirectProductSaleManagementService {

    List<DirectProductManagementVO> selectDirectSaleList(Map<String, Object> parameterVO);

    DirectProductManagementVO getDirectProductCount();

    List<DirectProductManagementVO> getCategoryNameList();

    int selectDirectSaleListTotal(Map<String, Object> parameterVO);

    DirectProductManagementVO getDirectProductDetail(String product_id);

    List<HistoryVO> selectHistoryProduct(String product_id);

    int updateDirectProductInfo(DirectProductManagementVO parameterVO);

    int updateDirectProductDeliveryInfo(DirectProductManagementVO parameterVO);

    int updateProductStatus(DirectProductManagementVO parameterVO);

    int insertChangeProductState(DirectProductManagementVO parameterVO);

    int changeDirectProductStatus(DirectProductManagementVO params);
    List<DirectProductManagementVO> selectOrderDeliveryProductList(Map<String, Object> parameterVO);

    int selectOrderDeliveryProductListTotal(Map<String, Object> parameterVO);

    DirectProductManagementVO getDeliveryCount();

    DirectProductManagementVO getReturnCount();

    List<DirectProductManagementVO> selectReturnDeliveryProductList(Map<String, Object> parameterVO);

    int selectReturnDeliveryProductListTotal(Map<String, Object> parameterVO);

    int orderDeliveryStatus(DirectProductManagementVO params);

    int orderReturnStatus(DirectProductManagementVO params);
    int insertHistoryDelivery(DirectProductManagementVO params);

    int updateOrderDecide(DirectProductManagementVO parameterVO);

    int updateOrderDecideCancel(DirectProductManagementVO parameterVO);

    int insertCalculateInfo(DirectProductManagementVO parameterVO);

    int deleteCalculateInfo(DirectProductManagementVO parameterVO);

//    List<DirectProductManagementVO> selectCalculateForProductId(DirectProductManagementVO parameterVO);
    DirectProductManagementVO selectCalculateForProductId(DirectProductManagementVO parameterVO);
    DirectProductManagementVO selectSameMonthCode(DirectProductManagementVO parameterVO);
    DirectProductManagementVO selectIsKeeping(DirectProductManagementVO parameterVO);


    int insertCalculateDetail(List<Integer> order_request_list);

}
