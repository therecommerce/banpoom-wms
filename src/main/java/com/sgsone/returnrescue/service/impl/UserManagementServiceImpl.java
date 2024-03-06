package com.sgsone.returnrescue.service.impl;

import com.sgsone.returnrescue.dao.UserManagemetDao;
import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.service.UserManagementService;
import com.sgsone.returnrescue.vo.AdminVO;
import com.sgsone.returnrescue.vo.ConsignmentVO;
import com.sgsone.returnrescue.vo.UserManagementVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service("userManagementService")
public class UserManagementServiceImpl implements UserManagementService {

    @Autowired
    private ExceptionFactory exceptionFactory;

    @Autowired
    UserManagemetDao userManagemetDao;

    @Override
    public List<UserManagementVO> selectSellerList(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<UserManagementVO> resultList = new ArrayList<UserManagementVO>();
        try {
            if(parameterVO.get("business_info_flag") != null && parameterVO.get("business_info_flag") != "" ){
                parameterVO.put("business_info_flag",parameterVO.get("business_info_flag").toString().split(","));
            }
            resultList = userManagemetDao.selectSellerList(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return resultList;
    }

    @Override
    public int selectSellerListTotal(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        int resultList =0;
        try {
            resultList = userManagemetDao.selectSellerListTotal(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return resultList;
    }

    @Override
    public int updateBusinessInfoFlag(UserManagementVO params) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return userManagemetDao.updateBusinessInfoFlag(params);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return -1;
    }

    @Override
    public int updateVipGrade(UserManagementVO params) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return userManagemetDao.updateVipGrade(params);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return -1;
    }

    @Override
    public List<UserManagementVO> selectUserList(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<UserManagementVO> resultList = new ArrayList<UserManagementVO>();
        try {
            if(parameterVO.get("business_info_flag") != null && parameterVO.get("business_info_flag") != "" ){
                parameterVO.put("business_info_flag",parameterVO.get("business_info_flag").toString().split(","));
            }
            resultList = userManagemetDao.selectUserList(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return resultList;
    }

    @Override
    public int selectUserListTotal(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        int resultList =0;
        try {
            resultList = userManagemetDao.selectUserListTotal(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return resultList;
    }

    @Override
    public UserManagementVO selectUserDetail(UserManagementVO parameterVO) {

        return userManagemetDao.selectUserDetail(parameterVO);
    }

    @Override
    public List<ConsignmentVO> selectSellerDetailList_consignment(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<ConsignmentVO> resultList = new ArrayList<ConsignmentVO>();
        try {
            if(parameterVO.get("product_state") != null && parameterVO.get("product_state") != "" ){
                parameterVO.put("product_state",parameterVO.get("product_state").toString().split(","));
            }
            if(parameterVO.get("product_grade") != null && parameterVO.get("product_grade") != "" ){
                parameterVO.put("product_grade",parameterVO.get("product_grade").toString().split(","));
            }
            resultList = userManagemetDao.selectSellerDetailList_consignment(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return resultList;
    }

    @Override
    public int selectSellerDetailListTotal_consignment(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        int resultList =0;
        try {
            resultList = userManagemetDao.selectSellerDetailListTotal_consignment(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return resultList;
    }

    @Override
    public List<ConsignmentVO> selectSellerDetailList_direct(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<ConsignmentVO> resultList = new ArrayList<ConsignmentVO>();
        try {
            if(parameterVO.get("product_state") != null && parameterVO.get("product_state") != "" ){
                parameterVO.put("product_state",parameterVO.get("product_state").toString().split(","));
            }
            resultList = userManagemetDao.selectSellerDetailList_direct(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return resultList;
    }

    @Override
    public int selectSellerDetailListTotal_direct(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        int resultList =0;
        try {
            resultList = userManagemetDao.selectSellerDetailListTotal_direct(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return resultList;
    }

    @Override
    public List<Integer> selectBusinessImage(UserManagementVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            List<Integer> resultList = userManagemetDao.selectBusinessImage(parameterVO);
            return resultList;
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    @Override
    public List<Integer> selectOnlineMarketingImage(UserManagementVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            List<Integer> resultList = userManagemetDao.selectOnlineMarketingImage(parameterVO);
            return resultList;
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    @Override
    public List<Integer> selectStoreImage(UserManagementVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            List<Integer> resultList = userManagemetDao.selectStoreImage(parameterVO);
            return resultList;
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }
}
