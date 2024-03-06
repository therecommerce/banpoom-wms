package com.sgsone.returnrescue.util;

import java.util.concurrent.ConcurrentHashMap;

import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;

import com.sgsone.returnrescue.vo.AdminVO;

public class SessionAttributeListener implements HttpSessionAttributeListener {
	
	private static ConcurrentHashMap<String, String> sessionList = new ConcurrentHashMap<String, String>();
	
	@Override
	public void attributeAdded(HttpSessionBindingEvent arg0) {
		
		if(arg0.getName().equals("sessionVO")) {
			AdminVO accountVO = (AdminVO) arg0.getValue();
			String accountId = accountVO.getAccount_id();
			
			if(sessionList.get(accountId) != null) {
				sessionList.remove(accountId);
			}
			
			sessionList.put(accountId, arg0.getSession().getId());
		}
	}
	
	
	@Override
	public void attributeRemoved(HttpSessionBindingEvent arg0) {
		
		if(arg0.getName().equals("sessionVO")) {
			AdminVO accountVO = (AdminVO) arg0.getValue();
			String accountId = accountVO.getAccount_id();
			
			String sessionId = sessionList.get(accountId);
			if(null != sessionId) {
				if(sessionId.equals(arg0.getSession().getId())){
					sessionList.remove(accountId);
				}
			}
		}
	} 
	
	@Override
	public void attributeReplaced(HttpSessionBindingEvent arg0) {
		
	}
	
	public static String getSession(String account_id, String session_id) {
		String sessionId = sessionList.get(account_id);
		if(sessionId == null) {
			return null;
		}
		if(!sessionId.equals(session_id)) {
			return null;
		}
		
		return sessionId;
	}
	
	
	public static String getSession(String account_id) {
		String sessionId = sessionList.get(account_id);
		if(sessionId == null) {
			return null;
		}
		return sessionId;
	}
	
	public static String closeSession(String account_id) {
		
		String sessionId = sessionList.get(account_id);
		
		sessionList.remove(account_id);
		
		if(sessionId == null) {
			return null;
		}
		
		return sessionId;
	}

}