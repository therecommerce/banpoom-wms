package com.sgsone.returnrescue.service.impl;

import com.sgsone.returnrescue.dao.WarehouseDao;
import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.service.WarehouseService;
import com.sgsone.returnrescue.util.QRCode;
import com.sgsone.returnrescue.vo.*;

import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class WarehouseServiceImpl implements WarehouseService {
	private static Logger log = LoggerFactory.getLogger(WarehouseServiceImpl.class);

	protected Log logger = LogFactory.getLog(WarehouseServiceImpl.class);

	@Autowired
	WarehouseDao warehouseDao;

	@Autowired
	private ExceptionFactory exceptionFactory;

	public WarehouseVO selectStockProductInfo(WarehouseVO parameterVO){
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		WarehouseVO result = null;
		try{
			result = warehouseDao.selectStockProductInfo(parameterVO);
		}catch (Exception e){
			exceptionFactory.commonException(e, whoAmi);
		}
		return result;
	}
	
	public WarehouseVO selectReleaseProductInfo(WarehouseVO parameterVO){
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		WarehouseVO result = null;
		try{
			result = warehouseDao.selectReleaseProductInfo(parameterVO);
		}catch (Exception e){
			exceptionFactory.commonException(e, whoAmi);
		}
		return result;
	}
	

	public int insertProductInspection(InspectionVO parameterVO){
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		int result = 0;
		try{
			result = warehouseDao.insertProductInspection(parameterVO);
		}catch (Exception e){
			exceptionFactory.commonException(e, whoAmi);
		}
		return result;
	}

	public int updateProductInspection(InspectionVO parameterVO){
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		int result = 0;
		try{
			result = warehouseDao.updateProductInspection(parameterVO);
		}catch (Exception e){
			exceptionFactory.commonException(e, whoAmi);
		}
		return result;
	}

	public int insertInspectionFile(InspectionVO parameterVO){
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		int result = 0;
		try{
			result = warehouseDao.insertInspectionFile(parameterVO);
		}catch (Exception e){
			exceptionFactory.commonException(e, whoAmi);
		}
		return result;
	}

	public List<InspectionVO> selectProductInspection(Map<String, Object> parameterVO){
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		List<InspectionVO> result = null;
		try{
			result = warehouseDao.selectProductInspection(parameterVO);
		}catch (Exception e){
			exceptionFactory.commonException(e, whoAmi);
		}
		return result;
	}


	public int selectProductInspectionTotal(Map<String, Object> parameterVO){
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		try{
			return warehouseDao.selectProductInspectionTotal(parameterVO);
		}catch (Exception e){
			exceptionFactory.commonException(e, whoAmi);
			return 0;
		}
	}
	


	@Override
	public Integer selectProductInspectionCount(InspectionVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        try {
            return warehouseDao.selectProductInspectionCount(parameterVO);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
	}

	
	public InspectionVO selectProductInspectionInfo(InspectionVO parameterVO){
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		InspectionVO result = null;
		try{
			result = warehouseDao.selectProductInspectionInfo(parameterVO);
		}catch (Exception e){
			exceptionFactory.commonException(e, whoAmi);
		}
		return result;
	}


	public InspectionVO selectProductInspectionId(InspectionVO parameterVO){
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		InspectionVO result = null;
		try{
			result = warehouseDao.selectProductInspectionId(parameterVO);
		}catch (Exception e){
			exceptionFactory.commonException(e, whoAmi);
		}
		return result;
	}

	public List<InspectionVO> selectInspectionFile(InspectionVO parameterVO){
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		List<InspectionVO> result = null;
		try{
			result = warehouseDao.selectInspectionFile(parameterVO);
		}catch (Exception e){
			exceptionFactory.commonException(e, whoAmi);
		}
		return result;
	}

	public int deleteInspection(InspectionVO parameterVO){
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		int result = 0;
		try{
			result = warehouseDao.deleteInspection(parameterVO);
		}catch (Exception e){
			exceptionFactory.commonException(e, whoAmi);
		}
		return result;
	}

	public int updateProductPriceByGrade(InspectionVO parameterVO){
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		int result = 0;
		try{
			result = warehouseDao.updateProductPriceByGrade(parameterVO);
		}catch (Exception e){
			exceptionFactory.commonException(e, whoAmi);
		}
		return result;
	}
	
	
	public int updateProductBarcode(InspectionVO parameterVO){
		String barcode = "";
		
		String strDate = parameterVO.getProduct_id().substring(1, 7);
		String strSerial = parameterVO.getProduct_id().substring(8, 13);
		String prefix = "0";
		
		if(parameterVO.getProduct_id().charAt(0) == 'M')
			prefix = "1";
		else if(parameterVO.getProduct_id().charAt(0) == 'S')
			prefix = "2";
		else if(parameterVO.getProduct_id().charAt(0) == 'R')
			prefix = "3";
		
		barcode = prefix + strDate + strSerial;
		barcode += QRCode.getBarcodeCheckSum(barcode);

		parameterVO.setProduct_barcode(barcode);

		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		int result = 0;
		try{
			result = warehouseDao.updateProductBarcode(parameterVO);
		}catch (Exception e){
			exceptionFactory.commonException(e, whoAmi);
		}
		return result;
	}

	public int updateRackBarcode(RackVO parameterVO){
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		int result = 0;
		try{
			result = warehouseDao.updateRackBarcode(parameterVO);
		}catch (Exception e){
			exceptionFactory.commonException(e, whoAmi);
		}
		return result;
	}
	
	

	public InspectionVO selectProductInspectionState(InspectionVO parameterVO){
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		InspectionVO result = null;
		try{
			result = warehouseDao.selectProductInspectionState(parameterVO);
		}catch (Exception e){
			exceptionFactory.commonException(e, whoAmi);
		}
		return result;
	}

	public InventoryVO selectProductReleaseState(InventoryVO parameterVO){
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		InventoryVO result = null;
		try{
			result = warehouseDao.selectProductReleaseState(parameterVO);
		}catch (Exception e){
			exceptionFactory.commonException(e, whoAmi);
		}
		return result;
	}

	public int insertProductReleaseState(InventoryVO parameterVO){
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		int result = 0;
		try{
			result = warehouseDao.insertProductReleaseState(parameterVO);
		}catch (Exception e){
			exceptionFactory.commonException(e, whoAmi);
		}
		return result;
	}
	
	public int updateProductReleaseState(InventoryVO parameterVO){
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		int result = 0;
		try{
			result = warehouseDao.updateProductReleaseState(parameterVO);
		}catch (Exception e){
			exceptionFactory.commonException(e, whoAmi);
		}
		return result;
	}

	

	public int insertProductReleaseFile(ReleaseVO parameterVO){
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		int result = 0;
		try{
			result = warehouseDao.insertProductReleaseFile(parameterVO);
		}catch (Exception e){
			exceptionFactory.commonException(e, whoAmi);
		}
		return result;
	}
	
	public int insertRackProduct(RackVO parameterVO){
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		int result = 0;
		try{
			result = warehouseDao.insertRackProduct(parameterVO);
		}catch (Exception e){
			exceptionFactory.commonException(e, whoAmi);
		}
		return result;
	}
	
	public List<RackVO> selectRackProduct(Map<String, Object> parameterVO){
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		List<RackVO> result = null;
		try{
			result = warehouseDao.selectRackProduct(parameterVO);
		}catch (Exception e){
			exceptionFactory.commonException(e, whoAmi);
		}
		return result;
	}

	public int selectRackProductTotal(Map<String, Object> parameterVO){
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		try{
			return warehouseDao.selectRackProductTotal(parameterVO);
		}catch (Exception e){
			exceptionFactory.commonException(e, whoAmi);
			return 0;
		}
	}

	public List<RackVO> selectRackProductDetail(Map<String, Object> parameterVO){
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		List<RackVO> result = null;
		try{
			result = warehouseDao.selectRackProductDetail(parameterVO);
		}catch (Exception e){
			exceptionFactory.commonException(e, whoAmi);
		}
		return result;
	}


	public List<RackVO> selectRackListAll(RackVO parameterVO){
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		List<RackVO> result = null;
		try{
			result = warehouseDao.selectRackListAll(parameterVO);
		}catch (Exception e){
			exceptionFactory.commonException(e, whoAmi);
		}
		return result;
	}

	public int selectRackProductDetailTotal(Map<String, Object> parameterVO){
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		try{
			return warehouseDao.selectRackProductDetailTotal(parameterVO);
		}catch (Exception e){
			exceptionFactory.commonException(e, whoAmi);
			return 0;
		}
	}


	public List<RackVO> selectRackList(Map<String, Object> parameterVO){
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		List<RackVO> result = null;
		try{
			result = warehouseDao.selectRackList(parameterVO);
		}catch (Exception e){
			exceptionFactory.commonException(e, whoAmi);
		}
		return result;
	}

	public int selectRackListTotal(Map<String, Object> parameterVO){
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		try{
			return warehouseDao.selectRackListTotal(parameterVO);
		}catch (Exception e){
			exceptionFactory.commonException(e, whoAmi);
			return 0;
		}
	}

	public List<InventoryVO> selectInventoryList(Map<String, Object> parameterVO){
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		List<InventoryVO> result = null;
		try{
			result = warehouseDao.selectInventoryList(parameterVO);
		}catch (Exception e){
			exceptionFactory.commonException(e, whoAmi);
		}
		return result;
	}
	
    public Integer selectInventoryListCount(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return warehouseDao.selectInventoryListCount(parameterVO);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

	
	public int updateInventory(InventoryVO parameterVO){
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		int result = 0;
		try{
			result = warehouseDao.updateInventory(parameterVO);
		}catch (Exception e){
			exceptionFactory.commonException(e, whoAmi);
		}
		return result;
	}

	public int insertInventory(InventoryVO parameterVO){
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		int result = 0;
		try{
			result = warehouseDao.insertInventory(parameterVO);
		}catch (Exception e){
			exceptionFactory.commonException(e, whoAmi);
		}
		return result;
	}
	
	public List<InventoryVO> selectProductReleaseList(Map<String, Object> parameterVO){
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		List<InventoryVO> result = null;
		try{
			result = warehouseDao.selectProductReleaseList(parameterVO);
		}catch (Exception e){
			exceptionFactory.commonException(e, whoAmi);
		}
		return result;
	}
	
    public Integer selectProductReleaseListCount(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return warehouseDao.selectProductReleaseListCount(parameterVO);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

	
	public int updateProductRelease(InventoryVO parameterVO){
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		int result = 0;
		try{
			result = warehouseDao.updateProductRelease(parameterVO);
		}catch (Exception e){
			exceptionFactory.commonException(e, whoAmi);
		}
		return result;
	}

	public int insertProductRelease(InventoryVO parameterVO){
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		int result = 0;
		try{
			result = warehouseDao.insertProductRelease(parameterVO);
		}catch (Exception e){
			exceptionFactory.commonException(e, whoAmi);
		}
		return result;
	}

	@Override
	public List<InventoryVO> selectProductReleaseInspection(InventoryVO parameterVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		List<InventoryVO> result = null;
		try{
			result = warehouseDao.selectProductReleaseInspection(parameterVO);
		}catch (Exception e){
			exceptionFactory.commonException(e, whoAmi);
		}
		return result;
	}

	@Override
	public Integer selectProductReleaseInspectionCount(InventoryVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        try {
            return warehouseDao.selectProductReleaseInspectionCount(parameterVO);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
	}

	public int updateProductCount(InventoryVO parameterVO){
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		int result = 0;
		try{
			result = warehouseDao.updateProductCount(parameterVO);
		}catch (Exception e){
			exceptionFactory.commonException(e, whoAmi);
		}
		return result;
	}


	public int updateProductCommission(InspectionVO parameterVO){
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		int result = 0;
		try{
			result = warehouseDao.updateProductCommission(parameterVO);
		}catch (Exception e){
			exceptionFactory.commonException(e, whoAmi);
		}
		return result;
	}

	public int updateProductCommissionRelease(InventoryVO parameterVO){
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		int result = 0;
		try{
			result = warehouseDao.updateProductCommissionRelease(parameterVO);
		}catch (Exception e){
			exceptionFactory.commonException(e, whoAmi);
		}
		return result;
	}

	public int updateOrderRequestStateProgress(InventoryVO parameterVO){
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		int result = 0;
		try{
			result = warehouseDao.updateOrderRequestStateProgress(parameterVO);
		}catch (Exception e){
			exceptionFactory.commonException(e, whoAmi);
		}
		return result;
	}

	public List<InventoryVO> selectProductReleaseListNoLimit(InventoryVO parameterVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		List<InventoryVO> result = null;
		try{
			result = warehouseDao.selectProductReleaseListNoLimit(parameterVO);
		}catch (Exception e){
			exceptionFactory.commonException(e, whoAmi);
		}
		return result;
	}
}