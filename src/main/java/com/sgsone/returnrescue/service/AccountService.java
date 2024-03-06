package com.sgsone.returnrescue.service;

import java.util.List;
import java.util.Map;

import com.sgsone.returnrescue.vo.AdminVO;
import com.sgsone.returnrescue.vo.AlarmVO;
import com.sgsone.returnrescue.vo.UserBanVO;
import com.sgsone.returnrescue.vo.selectbox.SelectBoxItem;

public interface AccountService {
	AdminVO selectUserInfo(AdminVO parameterVO);
	AdminVO checkAccountId(AdminVO parameterVO);
	void updateLastLogin(AdminVO parameterVO);
	int updateUserInfo(AdminVO parameterVO);
	int updateAlarm(AlarmVO params);
	AlarmVO selectAlarm(AdminVO adminVO);
	int insertAlarmHistory(AlarmVO alarmVO);
	int updateDeleteFlag(UserBanVO parameterVO);
}
