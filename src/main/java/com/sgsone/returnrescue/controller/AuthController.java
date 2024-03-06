package com.sgsone.returnrescue.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sgsone.returnrescue.exception.ExceptionFactory;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AuthController {

	protected Log logger = LogFactory.getLog(AuthController.class);

	@Autowired
	private ExceptionFactory exceptionFactory;

	@RequestMapping(value = "/authList.do", method = { RequestMethod.POST, RequestMethod.GET })
	public String authList(Locale locale,ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		try {
			
			
		} catch (Exception e) {

			exceptionFactory.commonException(e, whoAmi);
		}
		return "/setting/auth/authList";
	}
}
