package com.sgsone.returnrescue.service;

import com.sgsone.returnrescue.vo.ConsignmentVO;
import com.sgsone.returnrescue.vo.DirectProductManagementVO;
import com.sgsone.returnrescue.vo.HistoryVO;
import com.sgsone.returnrescue.vo.ProductCountVO;
import com.sgsone.returnrescue.vo.ProductListVO;
import org.apache.commons.math3.stat.descriptive.summary.Product;

import java.util.List;
import java.util.Map;

public interface ConsignmentService {
    ProductCountVO selectConsignmentProductCount();
    List<ConsignmentVO> selectConsignmentList(Map<String, Object> parameterVO);
    int selectConsignmentListTotal(Map<String, Object> parameterVO);
    ConsignmentVO selectConsignmentDetail(ConsignmentVO parameterVO);
    List<ConsignmentVO> selectOptionList(ConsignmentVO parameterVO);
    int updateProductInfo(ConsignmentVO parameterVO);
    int updateProductInspection(ConsignmentVO parameterVO);
    List<ConsignmentVO> selectConsignmentSellingList(Map<String, Object> parameterVO);
    int selectConsignmentSellingListTotal(Map<String, Object> parameterVO);
    ProductCountVO selectConsignmentProductSellingCount();

    List<DirectProductManagementVO> selectOrderDeliveryProductList(Map<String, Object> parameterVO);
    List<DirectProductManagementVO> selectTrackingNumberFlag(ProductListVO parameterVO);
    int updateTrackingNumberFlag(ProductListVO parameterVO);
    List<DirectProductManagementVO> selectTrackingNumber(ProductListVO parameterVO);
    List<Map<String, Object>> selectDeliveryInfo(ProductListVO parameterVO);

    DirectProductManagementVO selectOrderDeliveryDetail(ProductListVO parameterVO);

    int selectOrderDeliveryProductListTotal(Map<String, Object> parameterVO);

    DirectProductManagementVO selectConsignDeliveryCount();

    DirectProductManagementVO selectConsignmentReturnCount();

    List<DirectProductManagementVO> selectReturnDeliveryProductList(Map<String, Object> parameterVO);

    int selectReturnDeliveryProductListTotal(Map<String, Object> parameterVO);
    int minusProductCount(ProductListVO parameterVO);
    int selectProductCount(ProductListVO parameterVO);
    int insertDeliveryOrderConsign(ProductListVO parameterVO);
    int insertDeliveryRequestReturnDelivery(ProductListVO parameterVO);
    int selectProductDeliveryInfo(ProductListVO parameterVO);
    int insertExcelDeliveryOrder(ProductListVO parameterVO);
    int insertExcelDeliveryOrderReturnDelivery(ProductListVO parameterVO);
    ProductListVO selectDeliveryNumber(ProductListVO parameterVO);
    List<HistoryVO> selectDeliveryHistory(ProductListVO parameterVO);

    int insertDeliveryHistory(ProductListVO parameterVO);
    int deleteDeliveryHistory(ProductListVO parameterVO);
    int updateProductSellType(ProductListVO parameterVO);

    int updatePostInfo(DirectProductManagementVO parameterVO);
    int updatePostTrackingNumber(DirectProductManagementVO parameterVO);

    int updatePostState(DirectProductManagementVO parameterVO);

    int insertSellingState(DirectProductManagementVO parameterVO);

    List<ProductListVO> selectTrackingPrintContent(ProductListVO parameterVO);

    int insertProductOption(ConsignmentVO parameterVO);
    int deleteOptionList(ConsignmentVO parameterVO);
    int insertProductOptionList(ConsignmentVO parameterVO);
    ConsignmentVO selectOptionName(ConsignmentVO parameterVO);
    List<ConsignmentVO> selectOptionPrice(ConsignmentVO parameterVO);
}
