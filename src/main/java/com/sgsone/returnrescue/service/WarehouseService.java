package com.sgsone.returnrescue.service;

import com.sgsone.returnrescue.vo.*;

import java.util.List;
import java.util.Map;

public interface WarehouseService {
	
    WarehouseVO selectStockProductInfo(WarehouseVO parameterVO);
    
    WarehouseVO selectReleaseProductInfo(WarehouseVO parameterVO);
    
    int insertProductInspection(InspectionVO parameterVO);
    
    int updateProductInspection(InspectionVO parameterVO);
    
    int insertInspectionFile(InspectionVO parameterVO);
    
    List<InspectionVO> selectProductInspection(Map<String, Object> parameterVO);
    
    int selectProductInspectionTotal(Map<String, Object> parameterVO);
    
    Integer selectProductInspectionCount(InspectionVO parameterVO);
    
    List<InspectionVO> selectInspectionFile(InspectionVO parameterVO);
    
    InspectionVO selectProductInspectionInfo(InspectionVO parameterVO);
    
    InspectionVO selectProductInspectionId(InspectionVO parameterVO);
    
    int deleteInspection(InspectionVO parameterVO);
    
    int updateProductPriceByGrade(InspectionVO parameterVO);
    
    int updateProductBarcode(InspectionVO parameterVO);
    
    int updateRackBarcode(RackVO parameterVO);

    InspectionVO selectProductInspectionState(InspectionVO parameterVO);
    
    InventoryVO selectProductReleaseState(InventoryVO parameterVO);
            
    int insertRackProduct(RackVO parameterVO);
    
	List<RackVO> selectRackProduct(Map<String, Object> parameterVO);
    
    int selectRackProductTotal(Map<String, Object> parameterVO);

	List<RackVO> selectRackProductDetail(Map<String, Object> parameterVO);

    int selectRackProductDetailTotal(Map<String, Object> parameterVO);
	
	List<RackVO> selectRackListAll(RackVO parameterVO);
	
	RackVO selectRackInfo(RackVO parameterVO);

	List<RackVO> selectRackList(Map<String, Object> parameterVO);
    
    int selectRackListTotal(Map<String, Object> parameterVO);

	List<InventoryVO> selectInventoryList(Map<String, Object> parameterVO);
	
    Integer selectInventoryListCount(Map<String, Object> parameterVO);
	
    int updateInventory(InventoryVO parameterVO);
    
    int insertInventory(InventoryVO parameterVO);
    
	List<InventoryVO> selectProductReleaseList(Map<String, Object> parameterVO);
	
    Integer selectProductReleaseListCount(Map<String, Object> parameterVO);
	
    int updateProductRelease(InventoryVO parameterVO);
    
    int insertProductRelease(InventoryVO parameterVO);
    
    int insertProductReleaseState(InventoryVO parameterVO);
    
    int insertProductReleaseFile(ReleaseVO parameterVO);
    
    int updateProductReleaseState(InventoryVO parameterVO);
    
	List<InventoryVO> selectProductReleaseInspection(InventoryVO parameterVO);
	
    Integer selectProductReleaseInspectionCount(InventoryVO parameterVO);

    int updateProductCount(InventoryVO parameterVO);

    int updateProductCommission(InspectionVO parameterVO);

    int updateProductCommissionRelease(InventoryVO parameterVO);

    int updateOrderRequestStateProgress(InventoryVO parameterVO);

    List<InventoryVO> selectProductReleaseListNoLimit(InventoryVO parameterVO);
}
