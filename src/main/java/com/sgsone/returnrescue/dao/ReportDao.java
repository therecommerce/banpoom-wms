package com.sgsone.returnrescue.dao;

import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.vo.ReportModalVO;
import com.sgsone.returnrescue.vo.ReviewVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Repository
public class ReportDao {

    @Autowired
    private ExceptionFactory exceptionFactory;

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    public List<ReviewVO> selectReportList(Map<String, Object> params) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<ReviewVO> reportVOList = new ArrayList<>();

        try {
            reportVOList = sqlSessionTemplate.selectList("report.selectReportList", params);
            return reportVOList;

        } catch (Exception e) {

            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    public Integer selectReportListCount(Map<String, Object> params) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.selectOne("report.selectReportListCount", params);

        } catch (Exception e) {

            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    public ReportModalVO selectReportModalInfo(ReportModalVO reportModalVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.selectOne("report.selectReportModalInfo", reportModalVO);

        } catch (Exception e) {

            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    public List<Integer> selectReportImageQuestion(ReportModalVO reportModalVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<Integer> resultList= null;

        try {
            resultList = sqlSessionTemplate.selectList("report.selectReportImageQuestion", reportModalVO);
        }catch(Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
        return resultList;
    }

}
