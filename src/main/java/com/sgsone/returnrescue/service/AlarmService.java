package com.sgsone.returnrescue.service;

import com.sgsone.returnrescue.vo.NotificationVO;

import java.util.List;

public interface AlarmService {

    int changeAlarmFlag(NotificationVO notificationVO);
    List<NotificationVO> selectAlarmList(NotificationVO notificationVO);
    int changeReadFlag(NotificationVO notificationVO);
    int deleteOneAlarm(NotificationVO parameterVO);
    int AlarmCount(NotificationVO notificationVO);
}
