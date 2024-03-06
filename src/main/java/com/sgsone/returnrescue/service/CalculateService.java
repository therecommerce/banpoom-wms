package com.sgsone.returnrescue.service;

import com.sgsone.returnrescue.vo.CalculateChartVO;
import com.sgsone.returnrescue.vo.CalculateVO;

import java.util.List;
import java.util.Map;

public interface CalculateService {

    List<CalculateVO> selectCalculateList(Map<String, Object> calculateVO);

    int selectCalculateListTotal(Map<String, Object> parameterVO);

    CalculateVO selectCalculatePrice();

    CalculateVO selectCalculateTotalInfo();

    List<CalculateChartVO> selectCalculateChartInfo(CalculateVO parameterVO);
    List<CalculateChartVO> selectReturnCalculateChartInfo(CalculateVO parameterVO);

    List<CalculateVO> selectCalculateDetailList(Map<String, Object> calculateVO);

    int selectCalculateDetailListTotal(Map<String, Object> parameterVO);

    CalculateVO selectCalculateState(String cal_dt);

    CalculateVO selectCalculateDetailInfo(String cal_dt);

    CalculateVO selectCalculateModal(CalculateVO parameterVO);

    List<CalculateVO> selectConsignCalculateList(Map<String, Object> parameterVO);

    Integer selectConsignCalculateListTotal(Map<String, Object> parameterVO);

    int updateCalState(CalculateVO param);

    int insertCalculateDecide(CalculateVO param);

    List<CalculateVO> selectCalculateModalList(Map<String, Object> parameterVO);

    CalculateVO selectCalculateModalDetail(Map<String, Object> parameterVO);

    List<CalculateVO> selectReturnCalDetail(Map<String, Object> parameterVO);

    List<CalculateVO> selectCalculateModalListKeep(Map<String, Object> parameterVO);

    CalculateVO selectCalculateModalDetailKeep(Map<String, Object> parameterVO);

    List<CalculateVO> selectCalculateDetail(Map<String, Object> calculateVO);

    int selectCalculateDetailTotal(Map<String, Object> parameterVO);

    List<CalculateVO> selectCalculateModalTableDetail(Map<String, Object> parameterVO);
    int selectCalculateModalTableDetailTotal(Map<String, Object> parameterVO);

    List<CalculateVO> selectReturnCalculateList(Map<String, Object> parameterVO);

    Integer selectReturnCalculateListTotal(Map<String, Object> parameterVO);
}
