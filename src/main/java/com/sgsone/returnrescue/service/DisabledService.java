package com.sgsone.returnrescue.service;

import com.sgsone.returnrescue.vo.DisabledVO;
import com.sgsone.returnrescue.vo.OfferManagementVO;
import com.sgsone.returnrescue.vo.ProductListVO;

import java.util.List;
import java.util.Map;

public interface DisabledService {

    OfferManagementVO selectDisabledCount();

    List<DisabledVO> selectDisabledList(Map<String, Object> parameterVO);

    int selectDisabledListTotal(Map<String, Object> parameterVO);

    OfferManagementVO selectDisabledDetail(String product_id);

    ProductListVO selectProductDetail(ProductListVO parameterVO);

    int insertDiscardBasic(OfferManagementVO parameterVO);

    int insertRecoveryBasic(OfferManagementVO consignmentVO);

    int insertHistory_product(OfferManagementVO parameterVO);

    int insertDisabledProduct(OfferManagementVO parameterVO);
}
