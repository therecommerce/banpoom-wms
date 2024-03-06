package com.sgsone.returnrescue.controller;

import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.service.CommonService;
import com.sgsone.returnrescue.service.CouponService;
import com.sgsone.returnrescue.service.PointService;
import com.sgsone.returnrescue.vo.*;
import com.sgsone.returnrescue.vo.datatable.DataTablesInput;
import com.sgsone.returnrescue.vo.datatable.DataTablesOutput;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/promotion")
public class PromotionController {

	protected Log logger = LogFactory.getLog(PromotionController.class);

	@Autowired
	private ExceptionFactory exceptionFactory;

	@Autowired
	CommonService commonService;

	@Autowired
	CouponService couponService;

	@Autowired
	PointService pointService;

	@RequestMapping(value = "/coupon.do", method = {RequestMethod.POST, RequestMethod.GET})
	public String coupon(@ModelAttribute("parameterVO") ProductListVO parameterVO, HttpServletResponse response, HttpServletRequest request, HttpSession session, ModelMap modelVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		AdminVO sessionValue = (AdminVO)session.getAttribute("sessionVO");

		try {
			if (session.getAttribute("sessionVO") == null) {
				return "redirect:/logout.do";
			} else {


			}
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
		}

		return "promotion/coupon";
	}

	@RequestMapping(value = "/coupon.json", method = {RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
	public DataTablesOutput<CouponVO> selectDirectSaleList(HttpServletResponse response, HttpServletRequest request, HttpSession session, @RequestBody DataTablesInput input) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		CouponVO parameterVO = new CouponVO();
		AdminVO sessionValue = (AdminVO)session.getAttribute("sessionVO");

		parameterVO.setDataTablesInput(input);
		parameterVO.getSearchMap().put("account_id",sessionValue.getAccount_id());

		List<CouponVO> CouponList = couponService.selectCouponList(parameterVO.getSearchMap());
		int total = couponService.selectCouponListTotal(parameterVO.getSearchMap());

		DataTablesOutput<CouponVO> output = new DataTablesOutput<CouponVO>();
		output.setDraw(input.getDraw());
		output.setRecordsTotal(total);
		output.setRecordsFiltered(total);
		output.setData(CouponList);

		return output;
	}

	@RequestMapping(value = "/deleteCoupon.json", method = { RequestMethod.POST })
	@ResponseBody
	public ModelAndView deleteCoupon(HttpSession session, HttpServletRequest request, @RequestBody CouponVO parameterVO) {
		ModelAndView modelAndView = new ModelAndView("jsonView");
		String whoAmi = Thread.currentThread().getStackTrace()[1].toString();

		try {

			int history_result = couponService.deleteCouponHistory(parameterVO);
//			int result = couponService.deleteCouponInfo(parameterVO);

			if (history_result >= 0) {
				modelAndView.addObject("resultCode", "success");
				modelAndView.addObject("message", "쿠폰 삭제성공");
			} else {
				modelAndView.addObject("resultCode", "fail");
				modelAndView.addObject("message", "쿠폰 삭제실패");
			}

		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			modelAndView.addObject("resultCode", "fail");
			modelAndView.addObject("message", "시스템 에러가 발생하였습니다.");
		}

		return modelAndView;
	}


	@RequestMapping(value = "/couponDetail.do", method = {RequestMethod.POST, RequestMethod.GET})
	public String couponDetail(@ModelAttribute("parameterVO") ProductListVO parameterVO, HttpServletResponse response, HttpServletRequest request, HttpSession session, ModelMap modelVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		String coupon_no = request.getParameter("coupon_no");

		AdminVO sessionValue = (AdminVO)session.getAttribute("sessionVO");

		CouponVO couponVO = couponService.selectCouponDetail(coupon_no);
		modelVO.addAttribute("couponVO", couponVO);

		try {
			if (session.getAttribute("sessionVO") == null) {
				return "redirect:/logout.do";
			} else {


			}
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
		}

		return "promotion/couponDetail";
	}

	@RequestMapping(value = "/updateCouponState.json", method = { RequestMethod.POST })
	@ResponseBody
	public ModelAndView updateCouponState(HttpSession session, HttpServletRequest request, @ModelAttribute("parameterVO") CouponVO parameterVO) {
		ModelAndView modelAndView = new ModelAndView("jsonView");
		String whoAmi = Thread.currentThread().getStackTrace()[1].toString();

		try {

			AdminVO loginVO = (AdminVO) session.getAttribute("sessionVO");

			int result = couponService.updateCouponState(parameterVO);

			if (result >= 0) {
				modelAndView.addObject("resultCode", "success");
				modelAndView.addObject("message", "쿠폰 상태변경성공");
			} else {
				modelAndView.addObject("resultCode", "fail");
				modelAndView.addObject("message", "쿠폰 상태변경실패");
			}
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			modelAndView.addObject("resultCode", "fail");
			modelAndView.addObject("message", "시스템 에러가 발생하였습니다.");
		}

		return modelAndView;
	}

	@RequestMapping(value = "/insertCoupon.json", method = { RequestMethod.POST })
	@ResponseBody
	public ModelAndView insertCoupon(HttpSession session, HttpServletRequest request, @ModelAttribute("parameterVO") CouponVO parameterVO) {
		ModelAndView modelAndView = new ModelAndView("jsonView");
		String whoAmi = Thread.currentThread().getStackTrace()[1].toString();

		try {

			AdminVO loginVO = (AdminVO) session.getAttribute("sessionVO");
			parameterVO.setAccount_id(loginVO.getAccount_id());

			int result = couponService.insertCoupon(parameterVO);

			if (result >= 0) {
				modelAndView.addObject("resultCode", "success");
				modelAndView.addObject("message", "쿠폰 등록성공");
			} else {
				modelAndView.addObject("resultCode", "fail");
				modelAndView.addObject("message", "쿠폰 등록실패");
			}
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			modelAndView.addObject("resultCode", "fail");
			modelAndView.addObject("message", "시스템 에러가 발생하였습니다.");
		}

		return modelAndView;
	}

	@RequestMapping(value = "/updateCoupon.json", method = { RequestMethod.POST })
	@ResponseBody
	public ModelAndView updateCoupon(HttpSession session, HttpServletRequest request, @ModelAttribute("parameterVO") CouponVO parameterVO) {
		ModelAndView modelAndView = new ModelAndView("jsonView");
		String whoAmi = Thread.currentThread().getStackTrace()[1].toString();

		try {

			AdminVO loginVO = (AdminVO) session.getAttribute("sessionVO");
			parameterVO.setAccount_id(loginVO.getAccount_id());

			int result = couponService.updateCoupon(parameterVO);

			if (result >= 0) {
				modelAndView.addObject("resultCode", "success");
				modelAndView.addObject("message", "쿠폰 변경성공");
			} else {
				modelAndView.addObject("resultCode", "fail");
				modelAndView.addObject("message", "쿠폰 변경실패");
			}
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			modelAndView.addObject("resultCode", "fail");
			modelAndView.addObject("message", "시스템 에러가 발생하였습니다.");
		}

		return modelAndView;
	}

	@RequestMapping(value = "/couponRegister.do", method = {RequestMethod.POST, RequestMethod.GET})
	public String couponRegister(@ModelAttribute("parameterVO") ProductListVO parameterVO, HttpServletResponse response, HttpServletRequest request, HttpSession session, ModelMap modelVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();


		try {
			if (session.getAttribute("sessionVO") == null) {
				return "redirect:/logout.do";
			} else {
				AdminVO sessionValue = (AdminVO)session.getAttribute("sessionVO");
				String coupon_no = request.getParameter("coupon_no");
				CouponVO couponVO = null;
				List<CategoryVO> categoryName = commonService.selectCategoryList(null);
				if(coupon_no != null && coupon_no != "") {
					couponVO = couponService.selectCouponDetail(coupon_no);
				}
				modelVO.addAttribute("categoryName", categoryName);
				modelVO.addAttribute("couponVO", couponVO);

			}
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
		}

		return "promotion/couponRegister";
	}


	@RequestMapping(value = "/couponDetailEdit.do", method = {RequestMethod.POST, RequestMethod.GET})
	public String couponDetailEdit(@ModelAttribute("parameterVO") ProductListVO parameterVO, HttpServletResponse response, HttpServletRequest request, HttpSession session, ModelMap modelVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();


		try {
			if (session.getAttribute("sessionVO") == null) {
				return "redirect:/logout.do";
			} else {
				AdminVO sessionValue = (AdminVO)session.getAttribute("sessionVO");
				String coupon_no = request.getParameter("coupon_no");

				List<CategoryVO> categoryName = commonService.selectCategoryList(null);
				CouponVO couponVO = couponService.selectCouponDetail(coupon_no);

				modelVO.addAttribute("categoryName", categoryName);
				modelVO.addAttribute("couponVO", couponVO);

			}
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
		}

		return "promotion/couponDetailEdit";
	}


	@RequestMapping(value = "/pointManagement.do", method = {RequestMethod.POST, RequestMethod.GET})
	public String pointManagement(HttpServletResponse response, HttpServletRequest request, HttpSession session, ModelMap modelVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		AdminVO sessionValue = (AdminVO)session.getAttribute("sessionVO");

		try {
			if (session.getAttribute("sessionVO") == null) {
				return "redirect:/logout.do";
			} else {
				PointVO pointVO = pointService.selectPointInfo();

				modelVO.addAttribute("PointVO", pointVO);
			}
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
		}

		return "promotion/pointManagement";
	}

	@RequestMapping(value = "/pointUpdate.json", method = { RequestMethod.POST })
	@ResponseBody
	public ModelAndView pointUpdate(HttpSession session, HttpServletRequest request, @RequestBody PointVO pointVO) {
		ModelAndView modelAndView = new ModelAndView("jsonView");
		String whoAmi = Thread.currentThread().getStackTrace()[1].toString();
		AdminVO sessionValue = (AdminVO)session.getAttribute("sessionVO");

		try {
			pointVO.setAdmin_account_id(sessionValue.getAccount_id());
			pointVO.setState("포인트 일괄 수정");

			int result1 = pointService.insertPointInfo(pointVO);
			int result2 = pointService.insertPointHistory(pointVO);

			if (result1 >= 0 && result2 >= 0) {
				modelAndView.addObject("resultCode", "success");
				modelAndView.addObject("message", "포인트 설정 성공");
			} else {
				modelAndView.addObject("resultCode", "fail");
				modelAndView.addObject("message", "포인트 설정 실패");
			}

		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			modelAndView.addObject("resultCode", "fail");
			modelAndView.addObject("message", "시스템 에러가 발생하였습니다.");
		}
		return modelAndView;
	}
}
