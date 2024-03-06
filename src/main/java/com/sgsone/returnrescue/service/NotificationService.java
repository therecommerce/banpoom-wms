package com.sgsone.returnrescue.service;

import com.sgsone.returnrescue.vo.NotificationVO;

public interface NotificationService {

    int insertInspectionNotification(NotificationVO notificationVO);
    int insertNotification(NotificationVO notificationVO);
}
