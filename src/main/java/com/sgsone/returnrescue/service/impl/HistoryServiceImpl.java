package com.sgsone.returnrescue.service.impl;

import com.sgsone.returnrescue.dao.HistoryDao;
import com.sgsone.returnrescue.dao.WarehouseDao;
import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.service.HistoryService;
import com.sgsone.returnrescue.service.WarehouseService;
import com.sgsone.returnrescue.vo.*;
import com.sgsone.returnrescue.vo.delivery.TrackingVO;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.commons.math3.stat.descriptive.summary.Product;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Service
public class HistoryServiceImpl implements HistoryService {
	private static Logger log = LoggerFactory.getLogger(HistoryServiceImpl.class);

	protected Log logger = LogFactory.getLog(HistoryServiceImpl.class);

	@Autowired
	HistoryDao historyDao;

	@Autowired
	private ExceptionFactory exceptionFactory;


	public int insertProductHistory(HistoryVO parameterVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		try {

			return historyDao.insertProductHistory(parameterVO);
		} catch (Exception e) {

			exceptionFactory.commonException(e, whoAmi);
		}
		return -1;
	}

	@Override
	public int insertDeliveryHistory(HistoryVO parameterVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		try {
			return historyDao.insertDeliveryHistory(parameterVO);
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
		}
		return -1;
	}

	public List<HistoryVO> selectHistoryProduct(String product_id) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		List<HistoryVO> resultList = new ArrayList<>();
		try {
			resultList = historyDao.selectHistoryProduct(product_id);
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
		}
		return resultList;
	}

	@Override
	public List<String> selectAllHistoryProduct() {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		List<String> resultList = new ArrayList<>();
		try {
			resultList = historyDao.selectAllHistoryProduct();
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
		}
		return resultList;
	}

	@Override
	public int insertAutoOrderDecide(HistoryVO historyVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		int result = 0;
		try {
			result = historyDao.insertAutoOrderDecide(historyVO);
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			result = -1;
		}
		return result;
	}

	public List<TrackingVO> selectUpdateTrackingHistoryList() {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		List<TrackingVO> resultList = new ArrayList<>();
		try {
			resultList = historyDao.selectUpdateTrackingHistoryList();
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
		}
		return resultList;
	}

	@Override
	public List<ProductListVO> selectUpdateDeliveryHistoryList() {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		List<ProductListVO> resultList = new ArrayList<>();
		try {
			resultList = historyDao.selectUpdateDeliveryHistoryList();
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
		}
		return resultList;
	}

	@Override
	public List<ProductListVO> selectDeliveryState(ProductListVO parameterVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		List<ProductListVO> resultList = new ArrayList<>();
		try {
			resultList = historyDao.selectDeliveryState(parameterVO);
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			resultList = null;
		}
		return resultList;
	}
}
