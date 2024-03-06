package com.sgsone.returnrescue.service;

import com.sgsone.returnrescue.vo.*;
import com.sgsone.returnrescue.vo.delivery.TrackingVO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


public interface HistoryService {
    int insertProductHistory(HistoryVO parameterVO);
    int insertDeliveryHistory(HistoryVO parameterVO);
    List<HistoryVO> selectHistoryProduct(String product_id);
    List<String> selectAllHistoryProduct();
    int insertAutoOrderDecide(HistoryVO historyVO);
    List<TrackingVO> selectUpdateTrackingHistoryList();
    List<ProductListVO> selectUpdateDeliveryHistoryList();
    List<ProductListVO> selectDeliveryState(ProductListVO parameterVO);
}
