package com.sgsone.returnrescue.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.vo.AdminVO;
import com.sgsone.returnrescue.vo.AlarmVO;
import com.sgsone.returnrescue.vo.UserBanVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AccountDao {
	/**
	 * 예외 처리 및 트래킹을 위한 멤버 변수
	 */

	/**
	 * 공통 예외 처리 Autowired
	 */
	@Autowired
	private ExceptionFactory exceptionFactory;
	
	/**
	 * SqlSessionTemplate 클래스  autowired
	 */
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;


	public AdminVO selectUserInfo(AdminVO parameterVO){
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		AdminVO resultVO = new AdminVO();
		try {
			resultVO = sqlSessionTemplate.selectOne("account.selectUserInfo", parameterVO);

		} catch (Exception e) {

			exceptionFactory.commonException(e, whoAmi);
			return null;

		}
		return resultVO;
	}


	public AdminVO checkAccountId(AdminVO parameterVO){
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		AdminVO resultVO = new AdminVO();
		try {
			resultVO = sqlSessionTemplate.selectOne("account.checkAccountId", parameterVO);
			
		} catch (Exception e) {

			exceptionFactory.commonException(e, whoAmi);
			return null;
			
		}
		return resultVO;
	}

	public void updateLastLogin(AdminVO parmaeterVO) {
		sqlSessionTemplate.update("account.updateLastLogin", parmaeterVO);
	}

	public int updateUserInfo(AdminVO parameterVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		try {

			sqlSessionTemplate.update("account.updateUserInfo", parameterVO);

		} catch (Exception e) {

			exceptionFactory.commonException(e, whoAmi);
			return -1;
		}
		return 1;
	}


	public int updateAlarm(AlarmVO params) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		try {
			sqlSessionTemplate.update("account.updateAlarm", params);
			return 1;
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
		}
		return 0;
	}

	public AlarmVO selectAlarm(AdminVO adminVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		AlarmVO alarmVO = new AlarmVO();
		try {
			return sqlSessionTemplate.selectOne("account.selectAlarm", adminVO);
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
		}
		return alarmVO;
	}

	public int insertAlarmHistory(AlarmVO params) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		try {
			return sqlSessionTemplate.insert("account.insertAlarmHistory", params);

		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
		}
		return -1;
	}

	public int updateDeleteFlag(UserBanVO parameterVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		try {
			return sqlSessionTemplate.update("account.updateDeleteFlag", parameterVO);
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			return -1;
		}
	}
}
