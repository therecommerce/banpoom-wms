package com.sgsone.returnrescue.controller;

import java.io.IOException;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.service.AccountService;
import com.sgsone.returnrescue.service.CommonService;
import com.sgsone.returnrescue.vo.CountVO;
import com.sgsone.returnrescue.vo.ProductListVO;
import com.sgsone.returnrescue.vo.rest.RestHeader;
import com.sgsone.returnrescue.vo.rest.RestResponse;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;
import org.springframework.web.servlet.support.RequestContextUtils;

import com.sgsone.returnrescue.util.QRCode;
import com.sgsone.returnrescue.vo.AdminVO;
import com.mysql.jdbc.StringUtils;

@Controller
public class AdminController {

	protected Log logger = LogFactory.getLog(AdminController.class);

	@Autowired
	private ExceptionFactory exceptionFactory;

	@Autowired
	private AccountService accountService;

	@Autowired
	private CommonService commonService;

	@Autowired
	SessionLocaleResolver localeResolver;

	@Autowired
	MessageSource messageSource;

	@RequestMapping(value = "/", method = {RequestMethod.POST, RequestMethod.GET})
	public String index(ModelMap model, HttpServletRequest request, HttpSession session, @ModelAttribute("parameterVO") AdminVO parameterVO) {

//		if (accountService.insertVoomerangAccount(parameterVO) >= 0) {
//			AdminVO sessionValue = (AdminVO)session.getAttribute("sessionVO");
//			model.addAttribute("account_id", sessionValue.getAccount_id());
//		}

		return "redirect:/login.do";
	}

	@RequestMapping(value = "/login.do", method = {RequestMethod.POST, RequestMethod.GET})
	public String login(Locale locale, @ModelAttribute("parameterVO") AdminVO parameterVO, ModelMap model, HttpServletRequest request,
						HttpServletResponse response, HttpSession session) {
		AdminVO sessionValue = (AdminVO)session.getAttribute("sessionVO");
		if(sessionValue != null){
			if(sessionValue.getAccount_id() != null && sessionValue.getAccount_id() != ""){

				try {
					response.sendRedirect("home.do");
				} catch (IOException e) {
					throw new RuntimeException(e);
				}
			}
		}
		model.addAttribute("locale", locale);

		return "common/login";
	}


	@RequestMapping(value = "/qna.do", method = {RequestMethod.POST, RequestMethod.GET})
	public String qna(Locale locale, @ModelAttribute("parameterVO") AdminVO parameterVO, ModelMap model, HttpServletRequest request,
						HttpServletResponse response, HttpSession session) {

		model.addAttribute("locale", locale);

		return "common/qna";
	}

	@RequestMapping(value = "/logout.do", method = {RequestMethod.POST, RequestMethod.GET})
	public String logout(Locale locale, ModelMap model, HttpServletRequest request, HttpServletResponse response, HttpSession session) {

		if (request.getParameter("lang") != null && !request.getParameter("lang").equals("")) {
			locale = new Locale(request.getParameter("lang"));
			localeResolver.setLocale(request, response, locale);
		}
		model.addAttribute("locale", locale);
		session.removeAttribute("sessionVO");

		return "common/login";
	}

	@RequestMapping(value = "/sideBar.json", method = {RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
	public ModelAndView getUserName(HttpSession session) {
		ModelAndView modelAndView = new ModelAndView("jsonView");
		String whoAmi = Thread.currentThread().getStackTrace()[1].toString();


		AdminVO sessionValue = (AdminVO)session.getAttribute("sessionVO");
		if(sessionValue != null){
			modelAndView.addObject("account_name", sessionValue.getAccount_name());
		}else{
			modelAndView.addObject("account_name", "");
		}

		return modelAndView;
	}

	@RequestMapping(value = "/login", method = {RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
	public RestResponse Login(@RequestBody AdminVO parameterVO, HttpSession session, HttpServletRequest request, Locale locale) {
		RestResponse restResp = new RestResponse();
		RestHeader header = new RestHeader();
		String whoAmi = Thread.currentThread().getStackTrace()[1].toString();

		try {
			AdminVO resultIdVO = accountService.checkAccountId(parameterVO);
			if (resultIdVO == null) {
				header.setResult_msg("아이디가 존재하지 않습니다.");
				header.setResult_code("Fail");
				restResp.setHeader(header);
				return restResp;
			}
			if (parameterVO.getAccount_pwd().equals(resultIdVO.getAccount_pwd())) {
				if(resultIdVO.getAccount_dormant() == 0) {
					header.setResult_msg("휴면계정입니다.");
					header.setResult_code("Fail");
					restResp.setHeader(header);
					return restResp;
				}
				if(Integer.parseInt(resultIdVO.getGrade_id()) <4) {
					accountService.updateLastLogin(resultIdVO);
					header.setResult_code("Success");
					restResp.setHeader(header);
					JSONObject result = new JSONObject();
					result.put("account_id", resultIdVO.getAccount_id());
					restResp.setBody(result);
					session.setAttribute("sessionVO", resultIdVO);
					return restResp;
				} else{
					header.setResult_msg("WMS 접근 권한이 없는 계정입니다.");
					header.setResult_code("Fail");
					restResp.setHeader(header);
					return restResp;
				}
			} else {
				header.setResult_msg("패스워드가 올바르지 않습니다.");
				header.setResult_code("Fail");
				restResp.setHeader(header);
				return restResp;
			}
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			header.setResult_msg("시스템 에러가 발생하였습니다.");
			header.setResult_code("Fail");
			restResp.setHeader(header);
			return restResp;
		}
	}


	@RequestMapping(value = "/home.do", method = {RequestMethod.POST, RequestMethod.GET})
	public String commissionSaleList(@ModelAttribute("parameterVO") ProductListVO parameterVO, HttpServletResponse response, HttpServletRequest request, HttpSession session, ModelMap modelVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();


		try {
			if (session.getAttribute("sessionVO") == null) {
				return "redirect:/logout.do";
			} else {
				CountVO countVO = commonService.selectTotalCount();
				List<ProductListVO> productListVO = new ArrayList<>();
				modelVO.addAttribute("countVO", countVO);

				CountVO deliveryVO = commonService.selectDeliveryCount();
				modelVO.addAttribute("deliveryCountVO", deliveryVO);
			}
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
		}

		return "common/home";
	}

}
