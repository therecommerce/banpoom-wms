package com.sgsone.returnrescue.service;

import com.sgsone.returnrescue.vo.AdminVO;
import com.sgsone.returnrescue.vo.ConsignmentVO;
import com.sgsone.returnrescue.vo.UserManagementVO;

import java.util.List;
import java.util.Map;

public interface UserManagementService {

    List<UserManagementVO> selectSellerList(Map<String, Object> parameterVO);

    int selectSellerListTotal(Map<String, Object> parameterVO);

    int updateBusinessInfoFlag(UserManagementVO params);

    int updateVipGrade(UserManagementVO params);

    List<UserManagementVO> selectUserList(Map<String, Object> parameterVO);

    int selectUserListTotal(Map<String, Object> parameterVO);

    UserManagementVO selectUserDetail(UserManagementVO parameterVO);

    List<ConsignmentVO> selectSellerDetailList_consignment(Map<String, Object> parameterVO);

    int selectSellerDetailListTotal_consignment(Map<String, Object> parameterVO);

    List<ConsignmentVO> selectSellerDetailList_direct(Map<String, Object> parameterVO);

    int selectSellerDetailListTotal_direct(Map<String, Object> parameterVO);

    List<Integer> selectBusinessImage(UserManagementVO parameterVO);
    List<Integer> selectOnlineMarketingImage(UserManagementVO parameterVO);
    List<Integer> selectStoreImage(UserManagementVO parameterVO);
}
