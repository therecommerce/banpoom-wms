package com.sgsone.returnrescue.service.impl;

import com.sgsone.returnrescue.dao.UserBanDao;
import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.service.UserBanService;
import com.sgsone.returnrescue.vo.UserBanVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserBanServiceImpl implements UserBanService {

    @Autowired
    private ExceptionFactory exceptionFactory;

    @Autowired
    private UserBanDao userBanDao;

    public int banHistory(UserBanVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return userBanDao.banHistory(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }
}
