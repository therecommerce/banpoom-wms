package com.sgsone.returnrescue.dao;

import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.vo.DirectProductManagementVO;
import com.sgsone.returnrescue.vo.HistoryVO;
import com.sgsone.returnrescue.vo.ProductListVO;
import com.sgsone.returnrescue.vo.delivery.TrackingVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Repository
public class HistoryDao {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	@Autowired
	private ExceptionFactory exceptionFactory;

	public int insertProductHistory(HistoryVO parameterVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		try {
			sqlSessionTemplate.insert("history.insertProductHistory", parameterVO);
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			return -1;
		}
		return 1;
	}

	public int insertDeliveryHistory(HistoryVO parameterVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		try {
			sqlSessionTemplate.insert("history.insertDeliveryHistory", parameterVO);
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			return -1;
		}
		return 1;
	}

	public List<HistoryVO> selectHistoryProduct(String product_id) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		List<HistoryVO> resultList = new ArrayList<HistoryVO>();
		try {
			resultList = sqlSessionTemplate.selectList("history.selectHistoryProduct", product_id);

		} catch (Exception e) {

			exceptionFactory.commonException(e, whoAmi);
			return null;
		}
		return resultList;
	}

	public List<String> selectAllHistoryProduct() {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		List<String> resultList = new ArrayList<>();
		try {
			resultList = sqlSessionTemplate.selectList("history.selectAllHistoryProduct");
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			return null;
		}
		return resultList;
	}

	public int insertAutoOrderDecide(HistoryVO historyVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		int result = 0;
		try {
			result = sqlSessionTemplate.insert("history.insertAutoOrderDecide", historyVO);
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			result = -1;
		}
		return result;
	}

	public List<TrackingVO> selectUpdateTrackingHistoryList() {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		List<TrackingVO> resultList = new ArrayList<TrackingVO>();
		try {
			resultList = sqlSessionTemplate.selectList("history.selectUpdateTrackingHistoryList");

		} catch (Exception e) {

			exceptionFactory.commonException(e, whoAmi);
			return null;
		}
		return resultList;
	}

	public List<ProductListVO> selectUpdateDeliveryHistoryList() {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		List<ProductListVO> resultList = new ArrayList<>();
		try {
			resultList = sqlSessionTemplate.selectList("history.selectUpdateDeliveryHistoryList");
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			return null;
		}
		return resultList;
	}

	public List<ProductListVO> selectDeliveryState(ProductListVO parameterVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		List<ProductListVO> resultList = new ArrayList<>();
		try {
			resultList = sqlSessionTemplate.selectList("history.selectDeliveryState", parameterVO);
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			resultList = null;
		}
		return resultList;
	}
}
