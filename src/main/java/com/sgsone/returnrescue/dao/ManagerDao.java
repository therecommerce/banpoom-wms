package com.sgsone.returnrescue.dao;

import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.vo.ManagerVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public class ManagerDao {

    @Autowired
    ExceptionFactory exceptionFactory;

    @Autowired
    SqlSessionTemplate sqlSessionTemplate;

    public List<ManagerVO> selectManagerList(Map<String,Object> managerVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.selectList("manager.selectManagerList", managerVO);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;

        }
    }

    public int selectListTotal(Map<String,Object> managerVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.selectOne("manager.selectListTotal", managerVO);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;

        }
    }

    public int insertManagerAuth(ManagerVO managerVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.insert("manager.insertManagerAuth", managerVO);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }

    public int insertAccount(ManagerVO managerVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.insert("manager.insertAccount", managerVO);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }

    public ManagerVO selectManagerDetail(Map<String,Object> param) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.selectOne("manager.selectManagerDetail", param);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;

        }
    }

    public int updateManagerAuth(ManagerVO managerVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.update("manager.updateManagerAuth", managerVO);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }

    public int updateManagerAccount(ManagerVO managerVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.update("manager.updateManagerAccount", managerVO);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }

    public ManagerVO selectManagerAuth(ManagerVO managerVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.selectOne("manager.selectManagerAuth", managerVO);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;

        }
    }

    public int deleteManagerAuth(ManagerVO managerVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.delete("manager.deleteManagerAuth", managerVO);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }

    public int updateManagerDelete(ManagerVO managerVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.update("manager.updateManagerDelete", managerVO);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }

}
