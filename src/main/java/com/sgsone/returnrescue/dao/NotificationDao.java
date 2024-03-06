package com.sgsone.returnrescue.dao;

import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.vo.NotificationVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class NotificationDao {

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;
    @Autowired
    private ExceptionFactory exceptionFactory;

    public int insertInspectionNotification(NotificationVO notificationVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        int result = 0;
        try {
            result = sqlSessionTemplate.insert("notification.insertInspectionNotification", notificationVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return 0;
        }
        return result;
    }

    public int insertNotification(NotificationVO notificationVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        int result = 0;
        try {
            result = sqlSessionTemplate.insert("notification.insertNotification", notificationVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return 0;
        }
        return result;
    }
}
