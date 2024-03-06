package com.sgsone.returnrescue.service.impl;

import com.sgsone.returnrescue.dao.PointDao;
import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.service.PointService;
import com.sgsone.returnrescue.vo.PointVO;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PointServiceImpl implements PointService {

    @Autowired
    private ExceptionFactory exceptionFactory;

    @Autowired
    private PointDao pointDao;

    public int insertPointInfo(PointVO pointVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return pointDao.insertPointInfo(pointVO);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;

        }
    }

    public int insertPointHistory(PointVO pointVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return pointDao.insertPointHistory(pointVO);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;

        }
    }

    public PointVO selectPointInfo() {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        PointVO pointVO = new PointVO();
        try {
            pointVO = pointDao.selectPointInfo();
            return pointVO;
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;

        }
    }

}
