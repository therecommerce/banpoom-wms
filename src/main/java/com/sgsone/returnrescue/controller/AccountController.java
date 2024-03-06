package com.sgsone.returnrescue.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.schedule.SchedulerService;
import com.sgsone.returnrescue.service.AccountService;
import com.sgsone.returnrescue.service.UserBanService;
import com.sgsone.returnrescue.util.Aes128;
import com.sgsone.returnrescue.vo.AlarmVO;
import com.sgsone.returnrescue.vo.UserBanVO;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.sgsone.returnrescue.vo.AdminVO;

@Controller
public class AccountController {

	protected Log logger = LogFactory.getLog(AccountController.class);

	@Autowired
	private ExceptionFactory exceptionFactory;

	@Autowired
	private AccountService accountService;

	@Autowired
	private UserBanService userBanService;

	@RequestMapping(value = "/checkLogin.json", method = {RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
	public ModelAndView checkLogin(@ModelAttribute("parameterVO") AdminVO parameterVO, HttpSession session,
								   HttpServletRequest request, Locale locale) {
		ModelAndView modelAndView = new ModelAndView("jsonView");
		String whoAmi = Thread.currentThread().getStackTrace()[1].toString();

		try {
			AdminVO resultIdVO = accountService.checkAccountId(parameterVO);
			if (resultIdVO == null) {
				modelAndView.addObject("resultCode", "fail");
				modelAndView.addObject("message", "아이디 또는 비밀번호를 다시 확인해주세요.");
				return modelAndView;
			}
			if (parameterVO.getAccount_pwd().equals(resultIdVO.getAccount_pwd())) {
				if(resultIdVO.getAccount_dormant() == 0) {
					modelAndView.addObject("resultCode", "fail");
					modelAndView.addObject("message", "휴면계정입니다.");
					return modelAndView;
				}
				if(Integer.parseInt(resultIdVO.getGrade_id()) > 3){
					modelAndView.addObject("resultCode", "fail");
					modelAndView.addObject("message", "WMS 접근권한이 없는 계정입니다.");
					return modelAndView;
				}
				accountService.updateLastLogin(parameterVO);
				modelAndView.addObject("resultCode", "success");
				session.setAttribute("sessionVO", resultIdVO);
			} else {
				modelAndView.addObject("resultCode", "fail");
				modelAndView.addObject("message", "아이디 또는 비밀번호를 다시 확인해주세요.");
				return modelAndView;
			}
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			modelAndView.addObject("resultCode", "fail");
			modelAndView.addObject("message", "시스템 에러가 발생하였습니다.");
		}

		return modelAndView;
	}

	@RequestMapping(value = "/editToLogin.do", method = {RequestMethod.POST, RequestMethod.GET})
	public String EditToLogin(Locale locale, @ModelAttribute("parameterVO") AdminVO parameterVO, ModelMap model, HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		try {
			if (session.getAttribute("sessionVO") == null) {
				return "redirect:/logout.do";
			} else {
				AdminVO sessionValue = (AdminVO) session.getAttribute("sessionVO");
				model.addAttribute("account_id", sessionValue.getAccount_id());
			}
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
		}

		return "account/editToLogin";
	}

	@RequestMapping(value = "/myPage.do", method = {RequestMethod.POST, RequestMethod.GET})
	public String myPage(Locale locale, @ModelAttribute("parameterVO") AdminVO parameterVO, ModelMap model, HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		try {
			if (session.getAttribute("sessionVO") == null) {
				return "redirect:/logout.do";
			} else {
				AdminVO sessionValue = (AdminVO) session.getAttribute("sessionVO");
				model.addAttribute("account_id", sessionValue.getAccount_id());
			}
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
		}

		return "account/myPageSideBar";
	}


	@RequestMapping(value = "/checkEditLogin.json", method = {RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
	public ModelAndView checkEditLogin(@ModelAttribute("parameterVO") AdminVO parameterVO, HttpSession session,
									   HttpServletRequest request, Locale locale, Model modelVO) throws Exception {
		ModelAndView modelAndView = new ModelAndView("jsonView");
		String whoAmi = Thread.currentThread().getStackTrace()[1].toString();

		Aes128 aes = new Aes128(Aes128.DEFAULT_KEY);
//        String sessionId = aes.decrypt(session.getId());

//        String account_id = aes.encrypt(request.getParameter("account_id"));
		String account_id = request.getParameter("account_id");

		AdminVO sessionValue = (AdminVO)session.getAttribute("sessionVO");

		try {
			AdminVO resultIdVO = accountService.checkAccountId(parameterVO);

//			 1. 아이디가 존재하지 않거나 틀린 경우
			if (resultIdVO == null) {
				modelAndView.addObject("resultCode", "fail");
				modelAndView.addObject("message", "아이디가 존재하지 않습니다.");
				return modelAndView;
			}

			if (sessionValue.getAccount_id().equals(account_id)) {
				modelAndView.addObject("resultCode", "success");
			} else {
				modelAndView.addObject("resultCode", "fail");
				modelAndView.addObject("message", "기존 로그인한 정보를 입력하세요.");
				return modelAndView;
			}

			//Aes128 aes = new Aes128(Aes128.DEFAULT_KEY);
			//String pass = aes.decrypt(resultIdVO.getAccount_pwd());
			if (parameterVO.getAccount_pwd().equals(resultIdVO.getAccount_pwd())) {
				modelAndView.addObject("resultCode", "success");
				session.setAttribute("sessionVO", resultIdVO);
			} else {
				modelAndView.addObject("resultCode", "fail");
				modelAndView.addObject("message", "패스워드가 올바르지 않습니다.");
				return modelAndView;
			}
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			modelAndView.addObject("resultCode", "fail");
			modelAndView.addObject("message", "시스템 에러가 발생하였습니다.");
		}

		return modelAndView;
	}

	@RequestMapping(value = "/userInfo.do", method = {RequestMethod.POST, RequestMethod.GET})
	public String userInfo(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session, @ModelAttribute("parameterVO")AdminVO params, Model modelVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		try {
			if (session.getAttribute("sessionVO") == null) {
				return "redirect:/logout.do";
			} else {
				AdminVO sessionValue = (AdminVO)session.getAttribute("sessionVO");
				AdminVO result = accountService.selectUserInfo(sessionValue);
				modelVO.addAttribute("userInfo", result);
			}
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
		}

		return "account/userInfo";
	}

	@RequestMapping(value = "/userInfoEdit.do", method = {RequestMethod.POST, RequestMethod.GET})
	public String userInfoEdit(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session, @ModelAttribute("parameterVO")AdminVO params, Model modelVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		try {
			if (session.getAttribute("sessionVO") == null) {
				return "redirect:/logout.do";
			} else {
				AdminVO sessionValue = (AdminVO)session.getAttribute("sessionVO");
				AdminVO result = accountService.selectUserInfo(sessionValue);
				modelVO.addAttribute("userInfo", result);
			}
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
		}

		return "account/userInfoEdit";
	}


	@RequestMapping(value = "/updateUserInfo.json", method = {RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
	public ModelAndView updateInfo(@RequestBody AdminVO parameterVO, HttpSession session, HttpServletRequest request, Locale locale) {
		ModelAndView modelAndView = new ModelAndView("jsonView");
		String whoAmi = Thread.currentThread().getStackTrace()[1].toString();

		try {
			int result = accountService.updateUserInfo(parameterVO);

			if (result >= 0) {
				modelAndView.addObject("resultCode", "success");
				modelAndView.addObject("message", "변경 성공");
			} else {
				modelAndView.addObject("resultCode", "fail");
				modelAndView.addObject("message", "변경 실패");
			}
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			modelAndView.addObject("resultCode", "fail");
			modelAndView.addObject("message", "시스템 에러가 발생하였습니다.");
		}

		return modelAndView;
	}

	@RequestMapping(value = "/banUser.json", method = {RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
	public ModelAndView banUser(@RequestBody UserBanVO parameterVO, HttpSession session, HttpServletRequest request, Locale locale) {
		ModelAndView modelAndView = new ModelAndView("jsonView");
		String whoAmi = Thread.currentThread().getStackTrace()[1].toString();

		try {
			AdminVO sessionValue = (AdminVO)session.getAttribute("sessionVO");
			parameterVO.setBan_by(sessionValue.getAccount_id());

			int result = userBanService.banHistory(parameterVO);
			int delete_result = accountService.updateDeleteFlag(parameterVO);

			if (result >= 0) {
				if (delete_result >= 0) {
					modelAndView.addObject("resultCode", "success");
					modelAndView.addObject("message", "강퇴 성공");
				} else {
					modelAndView.addObject("resultCode", "fail");
					modelAndView.addObject("message", "강퇴 실패");
				}
			} else {
				modelAndView.addObject("resultCode", "fail");
				modelAndView.addObject("message", "강퇴 실패");
			}
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			modelAndView.addObject("resultCode", "fail");
			modelAndView.addObject("message", "시스템 에러가 발생하였습니다.");
		}

		return modelAndView;
	}

	@RequestMapping(value = "/alarm.do", method = {RequestMethod.POST, RequestMethod.GET})
	public String alarm(Locale locale, @ModelAttribute("parameterVO") AdminVO parameterVO, ModelMap model, HttpServletRequest request,
						HttpServletResponse response, HttpSession session) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		try {
			if (session.getAttribute("sessionVO") == null) {
				return "redirect:/logout.do";
			} else {
				AdminVO sessionValue = (AdminVO)session.getAttribute("sessionVO");
				AlarmVO alarm = accountService.selectAlarm(sessionValue);
				model.addAttribute("alarm", alarm);
			}
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
		}

		return "account/alarm";
	}

	@RequestMapping(value = "/alarm.json", method = { RequestMethod.POST, RequestMethod.GET })
	@ResponseBody
	public String updateAlarm(Locale locale, HttpServletResponse response, HttpServletRequest request, HttpSession session, @RequestBody AlarmVO parameterVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		AdminVO sessionValue = (AdminVO)session.getAttribute("sessionVO");
		AlarmVO alarmVO = new AlarmVO();
		ModelAndView modelAndView = new ModelAndView("jsonView");

		parameterVO.setAes_key(sessionValue.getAes_key());
		parameterVO.setAccount_id(sessionValue.getAccount_id());

		try {
			accountService.updateAlarm(parameterVO);
			accountService.insertAlarmHistory(parameterVO);

			modelAndView.addObject("resultCode", "success");
			modelAndView.addObject("message", "변경 성공");
			modelAndView.addObject("result", parameterVO.getAlarm_state());

		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
		}
		return "/common/alarm";
	}
}
