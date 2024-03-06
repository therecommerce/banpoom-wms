package com.sgsone.returnrescue.service;

import com.sgsone.returnrescue.vo.ReportModalVO;
import com.sgsone.returnrescue.vo.ReportVO;
import com.sgsone.returnrescue.vo.ReviewVO;

import java.util.List;
import java.util.Map;

public interface ReportService {

    List<ReviewVO> selectReportList(Map<String, Object> params);

    Integer selectReportListCount(Map<String, Object> params);

    ReportModalVO selectReportModalInfo(ReportModalVO reportModalVO);

    List<Integer> selectReportImageQuestion(ReportModalVO reportModalVO);
}
