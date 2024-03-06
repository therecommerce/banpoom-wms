package com.sgsone.returnrescue.service.impl;

import com.sgsone.returnrescue.dao.ManagerDao;
import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.service.ManagerService;
import com.sgsone.returnrescue.vo.ManagerVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class ManagerServiceImpl implements ManagerService {

    @Autowired
    ExceptionFactory exceptionFactory;

    @Autowired
    ManagerDao managerDao;

    public List<ManagerVO> selectManagerList(Map<String,Object> managerVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return managerDao.selectManagerList(managerVO);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;

        }
    }

    public int selectListTotal(Map<String,Object> managerVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return managerDao.selectListTotal(managerVO);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;

        }
    }

    public int insertManagerAuth(ManagerVO managerVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return managerDao.insertManagerAuth(managerVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }

    public int insertAccount(ManagerVO managerVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return managerDao.insertAccount(managerVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }

    public ManagerVO selectManagerDetail(Map<String,Object> param) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return managerDao.selectManagerDetail(param);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;

        }
    }

//    public int updateManager(ManagerVO managerVO) {
//        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
//
//        try {
//            return managerDao.insertManagerAuth(managerVO);
//        } catch (Exception e) {
//            exceptionFactory.commonException(e, whoAmi);
//            return -1;
//        }
//    }

    public int updateManagerAuth(ManagerVO managerVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return managerDao.updateManagerAuth(managerVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }

    public int updateManagerAccount(ManagerVO managerVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return managerDao.updateManagerAccount(managerVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }

    public ManagerVO selectManagerAuth(ManagerVO param) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return managerDao.selectManagerAuth(param);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;

        }
    }

    public int deleteManagerAuth(ManagerVO managerVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return managerDao.deleteManagerAuth(managerVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }

    public int updateManagerDelete(ManagerVO managerVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return managerDao.updateManagerDelete(managerVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }

}
