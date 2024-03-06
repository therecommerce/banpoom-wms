package com.sgsone.returnrescue.dao;

import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.vo.*;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Repository
public class UserManagemetDao {

    @Autowired
    private ExceptionFactory exceptionFactory;
    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    public List<UserManagementVO> selectSellerList(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<UserManagementVO> resultList = new ArrayList<UserManagementVO>();
        try {
            resultList = sqlSessionTemplate.selectList("user.selectSellerList", parameterVO);

        } catch (Exception e) {

            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
        return resultList;
    }

    public int selectSellerListTotal(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        int result = 0;
        try {
            result = sqlSessionTemplate.selectOne("user.selectSellerListTotal", parameterVO);

        } catch (Exception e) {

            exceptionFactory.commonException(e, whoAmi);
            return 0;
        }
        return result;
    }

    public int updateBusinessInfoFlag(UserManagementVO params) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            sqlSessionTemplate.update("user.updateBusinessInfoFlag", params);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
        return 1;
    }

    public int updateVipGrade(UserManagementVO params) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            sqlSessionTemplate.update("user.updateVipGrade", params);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
        return 1;
    }

    public List<UserManagementVO> selectUserList(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<UserManagementVO> resultList = new ArrayList<UserManagementVO>();
        try {
            resultList = sqlSessionTemplate.selectList("user.selectUserList", parameterVO);

        } catch (Exception e) {

            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
        return resultList;
    }

    public int selectUserListTotal(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        int result = 0;
        try {
            result = sqlSessionTemplate.selectOne("user.selectUserListTotal", parameterVO);

        } catch (Exception e) {

            exceptionFactory.commonException(e, whoAmi);
            return 0;
        }
        return result;
    }

    public UserManagementVO selectUserDetail(UserManagementVO parameterVO) {
        return sqlSessionTemplate.selectOne("user.selectUserDetail", parameterVO);
    }

    public List<ConsignmentVO> selectSellerDetailList_consignment(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<ConsignmentVO> resultList = new ArrayList<ConsignmentVO>();
        try {
            resultList = sqlSessionTemplate.selectList("user.selectSellerDetailList_consignment", parameterVO);

        } catch (Exception e) {

            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
        return resultList;
    }

    public int selectSellerDetailListTotal_consignment(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        int result = 0;
        try {
            result = sqlSessionTemplate.selectOne("user.selectSellerDetailListTotal_consignment", parameterVO);

        } catch (Exception e) {

            exceptionFactory.commonException(e, whoAmi);
            return 0;
        }
        return result;
    }

    public List<ConsignmentVO> selectSellerDetailList_direct(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<ConsignmentVO> resultList = new ArrayList<ConsignmentVO>();
        try {
            resultList = sqlSessionTemplate.selectList("user.selectSellerDetailList_direct", parameterVO);

        } catch (Exception e) {

            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
        return resultList;
    }

    public int selectSellerDetailListTotal_direct(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        int result = 0;
        try {
            result = sqlSessionTemplate.selectOne("user.selectSellerDetailListTotal_direct", parameterVO);

        } catch (Exception e) {

            exceptionFactory.commonException(e, whoAmi);
            return 0;
        }
        return result;
    }

    public List<Integer> selectBusinessImage(UserManagementVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<Integer> resultList = null;

        try {
            resultList = sqlSessionTemplate.selectList("user.selectBusinessImage", parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }

        return resultList;
    }

    public List<Integer> selectOnlineMarketingImage(UserManagementVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<Integer> resultList = null;

        try {
            resultList = sqlSessionTemplate.selectList("user.selectOnlineMarketingImage", parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }

        return resultList;
    }

    public List<Integer> selectStoreImage(UserManagementVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<Integer> resultList = null;

        try {
            resultList = sqlSessionTemplate.selectList("user.selectStoreImage", parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }

        return resultList;
    }
}
