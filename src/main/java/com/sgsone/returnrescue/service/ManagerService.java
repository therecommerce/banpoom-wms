package com.sgsone.returnrescue.service;

import com.sgsone.returnrescue.vo.ManagerVO;

import java.util.List;
import java.util.Map;

public interface ManagerService {
    List<ManagerVO> selectManagerList(Map<String,Object> managerVO);

    int selectListTotal(Map<String,Object> managerVO);

    int insertManagerAuth(ManagerVO managerVO);
    int insertAccount(ManagerVO managerVO);

    ManagerVO selectManagerDetail(Map<String,Object> param);
    int updateManagerAuth(ManagerVO param);
    int updateManagerAccount(ManagerVO param);
    ManagerVO selectManagerAuth(ManagerVO param);
    int deleteManagerAuth(ManagerVO param);
    int updateManagerDelete(ManagerVO param);


}
