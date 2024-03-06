package com.sgsone.returnrescue.service.impl;

import com.sgsone.returnrescue.dao.NotificationDao;
import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.service.NotificationService;
import com.sgsone.returnrescue.vo.NotificationVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NotificationServiceImpl implements NotificationService {

    @Autowired
    private ExceptionFactory exceptionFactory;
    @Autowired
    NotificationDao notificationDao;

    @Override
    public int insertInspectionNotification(NotificationVO notificationVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        int result = 0;

        try {
            result = notificationDao.insertInspectionNotification(notificationVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return result;
    }

    @Override
    public int insertNotification(NotificationVO notificationVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        int result = 0;

        try {
            result = notificationDao.insertNotification(notificationVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return result;
    }
}
