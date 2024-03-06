package com.sgsone.returnrescue.service;

import com.sgsone.returnrescue.vo.PointVO;

public interface PointService {

    int insertPointInfo(PointVO pointVO);
    int insertPointHistory(PointVO pointVO);
    PointVO selectPointInfo();

}
