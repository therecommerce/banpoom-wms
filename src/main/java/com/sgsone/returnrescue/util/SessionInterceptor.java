package com.sgsone.returnrescue.util;

import java.util.Collections;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sgsone.returnrescue.vo.AdminVO;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class SessionInterceptor extends HandlerInterceptorAdapter {
	
	protected Log logger = LogFactory.getLog(SessionInterceptor.class);
	

	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception{
		HttpSession session = request.getSession(false);
		
				
		if(true)
			return super.preHandle(request, response, handler);

		
		if(session == null) {
			response.sendRedirect("/smr/login");
			return false;
		}else {

			AdminVO accountVO = (AdminVO) session.getAttribute("sessionVO");
			if(accountVO != null) {
				String accountId = accountVO.getAccount_id();
				String requestUri = request.getRequestURI();
				if(SessionAttributeListener.getSession(accountId, session.getId()) == null) {
					response.sendRedirect("/smr/login");
					return false;
				}
								
				if(-1 != requestUri.indexOf(".do")) { 
					if(!checkAuth(requestUri, accountVO.getGrade_id())) {
						response.sendRedirect("/smr/login");
						return false;
					}
				}
				
				
			}else {
				response.sendRedirect("/smr/login");
				return false;
			}
		}
		
		return super.preHandle(request, response, handler);
	}
	
	private String getRequestBody(final HttpServletRequest request) {
		
		String parameter = "";
		for (Object name : Collections.<String>list(request.getParameterNames())) {
		    String value = request.getParameter(name.toString());
		    parameter += name + "=" + value + "&";
		}
		return parameter;
	}
	
	private boolean checkAuth(String requestUri, String grade_id) {
		boolean checkUri = false;
		int checkGradeId = Integer.parseInt(grade_id);
		if(-1 != requestUri.indexOf("Map.do") || -1 != requestUri.indexOf("dashboard.do") || -1 != requestUri.indexOf("leftMenu.do") || -1 != requestUri.indexOf("dashContentSetting.do") || -1 != requestUri.indexOf("main.do") || -1 != requestUri.indexOf("cctvList.do") || -1 != requestUri.indexOf("sensorList.do")) {
			checkUri = true;
		}else {
			if(checkGradeId < 4) {
				if(-1 != requestUri.indexOf("deviceHistoryPopup") || -1 != requestUri.indexOf("appUpdatePushPopup")) {
					if(checkGradeId < 3) {
						checkUri = true;
					}else {
						checkUri = false;
					}
				}else {
					checkUri = true;
				}
			}else {
				if(4 == checkGradeId) {
					if(-1 != requestUri.indexOf("/admin") || -1 != requestUri.indexOf("/worker") 
							|| -1 != requestUri.indexOf("/device") || -1 != requestUri.indexOf("/mapping")) {
							checkUri = true;
					}else {
						checkUri = false;
					}
				}else {
					checkUri = false;
				}
			}
		}
		
		return checkUri;
	}
}