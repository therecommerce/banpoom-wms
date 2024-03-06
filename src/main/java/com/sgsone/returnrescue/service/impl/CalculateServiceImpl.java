package com.sgsone.returnrescue.service.impl;

import com.sgsone.returnrescue.dao.CalculateDao;
import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.service.CalculateService;
import com.sgsone.returnrescue.vo.CalculateChartVO;
import com.sgsone.returnrescue.vo.CalculateVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service("calculateService")
public class CalculateServiceImpl implements CalculateService {

    @Autowired
    private ExceptionFactory exceptionFactory;

    @Autowired
    CalculateDao calculateDao;

    public List<CalculateVO> selectCalculateList(Map<String, Object> calculateVO) {
        List<CalculateVO> productList = calculateDao.selectCalculateList(calculateVO);
        return productList;
    }

    public int selectCalculateListTotal(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        int result = 0;
        try {
            result = calculateDao.selectCalculateListTotal(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return result;
    }

    @Override
    public CalculateVO selectCalculatePrice() {
        return calculateDao.selectCalculatePrice();
    }

    public CalculateVO selectCalculateTotalInfo() {
        return calculateDao.selectCalculateTotalInfo();
    }

    @Override
    public List<CalculateChartVO> selectCalculateChartInfo(CalculateVO parameterVO) {
        List<CalculateChartVO> selectCalculateChartInfo = calculateDao.selectCalculateChartInfo(parameterVO);
        return selectCalculateChartInfo;
    }

    @Override
    public List<CalculateChartVO> selectReturnCalculateChartInfo(CalculateVO parameterVO) {
        List<CalculateChartVO> selectReturnCalculateChartInfo = calculateDao.selectReturnCalculateChartInfo(parameterVO);
        return selectReturnCalculateChartInfo;
    }

    public List<CalculateVO> selectCalculateDetailList(Map<String, Object> calculateVO) {
        List<CalculateVO> productList = calculateDao.selectCalculateDetailList(calculateVO);
        return productList;
    }

    public int selectCalculateDetailListTotal(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        int result = 0;
        try {
            result = calculateDao.selectCalculateDetailListTotal(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return result;
    }

    @Override
    public CalculateVO selectCalculateState(String cal_dt) {

        return calculateDao.selectCalculateState(cal_dt);
    }

    public CalculateVO selectCalculateDetailInfo(String cal_no) {
        return calculateDao.selectCalculateDetailInfo(cal_no);
    }

    public CalculateVO selectCalculateModal(CalculateVO parameterVO) {
        CalculateVO calculateModal = calculateDao.selectCalculateModal(parameterVO);
        return calculateModal;
    }

    public List<CalculateVO> selectConsignCalculateList(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<CalculateVO> calculateVOList = new ArrayList<CalculateVO>();
        try {
            calculateVOList = calculateDao.selectConsignCalculateList(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return calculateVOList;
    }

    public Integer selectConsignCalculateListTotal(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        try {
            return calculateDao.selectConsignCalculateListTotal(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return 0;
        }
    }

    public int updateCalState(CalculateVO param) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return calculateDao.updateCalState(param);
        }catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }

    public int insertCalculateDecide(CalculateVO param) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return calculateDao.insertCalculateDecide(param);
        }catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }


    public List<CalculateVO> selectCalculateModalList(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<CalculateVO> calculateVOList = new ArrayList<CalculateVO>();
        try {
            calculateVOList = calculateDao.selectCalculateModalList(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return calculateVOList;
    }


    public CalculateVO selectCalculateModalDetail(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        CalculateVO calculateVOList = new CalculateVO();
        try {
            calculateVOList = calculateDao.selectCalculateModalDetail(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return calculateVOList;
    }

    public List<CalculateVO> selectReturnCalDetail(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<CalculateVO> calculateVOList = new ArrayList<CalculateVO>();
        try {
            calculateVOList = calculateDao.selectReturnCalDetail(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return calculateVOList;
    }


    public List<CalculateVO> selectCalculateModalListKeep(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<CalculateVO> calculateVOList = new ArrayList<CalculateVO>();
        try {
            calculateVOList = calculateDao.selectCalculateModalListKeep(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return calculateVOList;
    }

    public CalculateVO selectCalculateModalDetailKeep(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        CalculateVO calculateVOList = new CalculateVO();
        try {
            calculateVOList = calculateDao.selectCalculateModalDetailKeep(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return calculateVOList;
    }

    public List<CalculateVO> selectCalculateDetail(Map<String, Object> calculateVO) {
        return calculateDao.selectCalculateDetail(calculateVO);
    }

    public int selectCalculateDetailTotal(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        int result = 0;
        try {
            result = calculateDao.selectCalculateDetailTotal(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return result;
    }


    public List<CalculateVO> selectCalculateModalTableDetail(Map<String, Object> parameterVO){
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<CalculateVO> calculateVOList = new ArrayList<CalculateVO>();
        try {
            calculateVOList = calculateDao.selectCalculateModalTableDetail(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return calculateVOList;
    }

    public int selectCalculateModalTableDetailTotal(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        int result = 0;
        try {
            result = calculateDao.selectCalculateModalTableDetailTotal(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return result;
    }

    public List<CalculateVO> selectReturnCalculateList(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<CalculateVO> calculateVOList = new ArrayList<CalculateVO>();
        try {
            calculateVOList = calculateDao.selectReturnCalculateList(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return calculateVOList;
    }

    public Integer selectReturnCalculateListTotal(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        try {
            return calculateDao.selectReturnCalculateListTotal(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return 0;
        }
    }
}
