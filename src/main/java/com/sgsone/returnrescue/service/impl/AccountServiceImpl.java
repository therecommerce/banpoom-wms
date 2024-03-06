package com.sgsone.returnrescue.service.impl;


import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.sgsone.returnrescue.service.AccountService;
import com.sgsone.returnrescue.vo.AlarmVO;
import com.sgsone.returnrescue.vo.UserBanVO;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sgsone.returnrescue.dao.AccountDao;
import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.vo.AdminVO;
import com.sgsone.returnrescue.vo.selectbox.SelectBoxItem;


@Service("accountService")
public class AccountServiceImpl implements AccountService {
	
	protected Log logger = LogFactory.getLog(AccountServiceImpl.class);

	@Autowired
	private ExceptionFactory exceptionFactory;
	
	@Autowired
	private AccountDao accountDao;

	public AdminVO selectUserInfo(AdminVO parameterVO) {
		// TODO Auto-generated method stub

		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		AdminVO result = new AdminVO();

		try {

			result = accountDao.selectUserInfo(parameterVO);

		} catch (Exception e) {

			exceptionFactory.commonException(e, whoAmi);

		}

		return result;
	}

	@Override
	public AdminVO checkAccountId(AdminVO parameterVO) {
		// TODO Auto-generated method stub
		
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		AdminVO result = new AdminVO();
		
		try {
			
			result = accountDao.checkAccountId(parameterVO);
	    	
		} catch (Exception e) {

			exceptionFactory.commonException(e, whoAmi);

		}
		
		return result;
	}

	@Override
	public void updateLastLogin (AdminVO parameterVO) {
		accountDao.updateLastLogin(parameterVO);
	}


	@Override
	public int updateUserInfo(AdminVO parameterVO) {
		// TODO Auto-generated method stub

		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		try {
			return accountDao.updateUserInfo(parameterVO);
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
		}
		return -1;
	}


	public int updateAlarm(AlarmVO params) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		try {
			accountDao.updateAlarm(params);
			return 1;
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
		}
		return 0;
	}

	public AlarmVO selectAlarm(AdminVO adminVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		try {
			return accountDao.selectAlarm(adminVO);

		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
		}
		return null;
	}

	public int insertAlarmHistory(AlarmVO alarmVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		try {
			return accountDao.insertAlarmHistory(alarmVO);

		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
		}
		return -1;
	}

	public int updateDeleteFlag(UserBanVO parameterVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		try {
			return accountDao.updateDeleteFlag(parameterVO);
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			return -1;
		}
	}
}