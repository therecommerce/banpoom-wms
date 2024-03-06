package com.sgsone.returnrescue.service.impl;

import com.sgsone.returnrescue.dao.AlarmDao;
import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.service.AlarmService;
import com.sgsone.returnrescue.vo.NotificationVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AlarmServiceImpl implements AlarmService {

    @Autowired
    ExceptionFactory exceptionFactory;
    @Autowired
    AlarmDao alarmDao;

    public int changeAlarmFlag(NotificationVO notificationVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return alarmDao.changeAlarmFlag(notificationVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }

    public List<NotificationVO> selectAlarmList(NotificationVO notificationVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return alarmDao.selectAlarmList(notificationVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    public int changeReadFlag(NotificationVO notificationVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return alarmDao.changeReadFlag(notificationVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }

    public int deleteOneAlarm(NotificationVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return alarmDao.deleteOneAlarm(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }

    public int AlarmCount(NotificationVO notificationVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return alarmDao.AlarmCount(notificationVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }
}
