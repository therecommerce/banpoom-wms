package com.sgsone.returnrescue.service;

import com.sgsone.returnrescue.vo.*;

import java.util.List;

public interface CommonService {
    List<CategoryVO> selectCategoryList(String category_id);
    List<ChangePriceVO> selectChangePriceList(String product_id);
    int insertDeliveryInfo(Object parameterVO);
    int insertChangePrice(Object parameterVO);
    List<FileVO> selectInspectionFileList(String product_id);
    List<FileVO> selectNoticeFileList(String notice_no);
    CountVO selectTotalCount();
    CountVO selectDeliveryCount();
    int batchProductPrice();
    List<Integer> selectProductImage(String product_id);
}
