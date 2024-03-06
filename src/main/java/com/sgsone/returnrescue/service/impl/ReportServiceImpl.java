package com.sgsone.returnrescue.service.impl;

import com.sgsone.returnrescue.dao.DirectProductSaleManagementDao;
import com.sgsone.returnrescue.dao.ReportDao;
import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.service.ReportService;
import com.sgsone.returnrescue.vo.ReportModalVO;
import com.sgsone.returnrescue.vo.ReviewVO;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service
public class ReportServiceImpl implements ReportService {

    protected Log logger = LogFactory.getLog(AccountServiceImpl.class);

    @Autowired
    private ExceptionFactory exceptionFactory;

    @Autowired
    DirectProductSaleManagementDao directProductSaleManagementDao;

    @Autowired
    ReportDao reportDao;

    public List<ReviewVO> selectReportList(Map<String, Object> params) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<ReviewVO> reportVOList = new ArrayList<>();

        try {
            reportVOList = reportDao.selectReportList(params);
            return reportVOList;

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    public Integer selectReportListCount(Map<String, Object> params) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return reportDao.selectReportListCount(params);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    public ReportModalVO selectReportModalInfo(ReportModalVO reportModalVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return reportDao.selectReportModalInfo(reportModalVO);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    public List<Integer> selectReportImageQuestion(ReportModalVO reportModalVO){
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try  {
            List<Integer> resultList = reportDao.selectReportImageQuestion(reportModalVO);
            return resultList;
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

}
