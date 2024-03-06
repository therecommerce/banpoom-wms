package com.sgsone.returnrescue.controller;

import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.schedule.SchedulerService;
import com.sgsone.returnrescue.service.*;
import com.sgsone.returnrescue.vo.*;
import com.sgsone.returnrescue.vo.datatable.DataTablesInput;
import com.sgsone.returnrescue.vo.datatable.DataTablesOutput;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Locale;

@Controller
@RequestMapping("/keeping")
public class KeepingController {

	protected Log logger = LogFactory.getLog(KeepingController.class);

	@Autowired
	private ExceptionFactory exceptionFactory;

	@Autowired
	CommonService commonService;

	@Autowired
	KeepingService keepingService;

	@Autowired
	ConsignmentService consignmentService;

	@Autowired
	HistoryService historyService;

	@Autowired
    SchedulerService schedulerService;

	@Autowired
	NotificationService notificationService;

	@RequestMapping(value = "/keepProduct.do", method = {RequestMethod.POST, RequestMethod.GET})
	public String selectKeepProductList(@ModelAttribute("parameterVO") ProductListVO parameterVO, HttpServletResponse response, HttpServletRequest request, HttpSession session, ModelMap modelVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		AdminVO sessionValue = (AdminVO)session.getAttribute("sessionVO");

		try {
			if (session.getAttribute("sessionVO") == null) {
				return "redirect:/logout.do";
			} else {

				ProductCountVO productCountVO = keepingService.selectKeepingProductCount();
				modelVO.addAttribute("productCountVO", productCountVO);

				List<CategoryVO> categoryName = commonService.selectCategoryList(null);
				modelVO.addAttribute("categoryName", categoryName);

				modelVO.addAttribute("parameterVO", parameterVO);

			}
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
		}

		return "return-keep/keepProduct";
	}
//
	@RequestMapping(value = "/keepProductDetail.do", method = {RequestMethod.POST, RequestMethod.GET})
	public String commissionSaleListDetail(Locale locale, HttpServletResponse response, HttpServletRequest request, HttpSession session, @ModelAttribute("ProductListVO") ProductListVO params, Model modelVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		String product_id = request.getParameter("product_id");
		try {
			if (session.getAttribute("sessionVO") == null) {
				return "redirect:/logout.do";
			} else{
				AdminVO sessionValue = (AdminVO)session.getAttribute("sessionVO");
				modelVO.addAttribute("account_id", sessionValue.getAccount_id());
				ConsignmentVO parameterVO = new ConsignmentVO();
				parameterVO.setProduct_id(product_id);
				ConsignmentVO consignmentVO = consignmentService.selectConsignmentDetail(parameterVO);
				modelVO.addAttribute("consignmentVO", consignmentVO);

				List<ChangePriceVO> changePriceVOList = commonService.selectChangePriceList(product_id);
				modelVO.addAttribute("changePriceVOList", changePriceVOList);

				List<HistoryVO> historyVOList = historyService.selectHistoryProduct(product_id);
				modelVO.addAttribute("historyVOList", historyVOList);

				List<FileVO> inspectionFileList = commonService.selectInspectionFileList(product_id);
				modelVO.addAttribute("inspectionFileList", inspectionFileList);
			}
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
		}

		return "return-keep/keepProductDetail";
	}


	@RequestMapping(value = "/keepProductDetailEdit.do", method = {RequestMethod.POST, RequestMethod.GET})
	public String itemRegisterSingle(Locale locale, HttpServletResponse response, HttpServletRequest request, HttpSession session, @ModelAttribute("parameterVO") ProductListVO params, Model modelVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		String product_id = request.getParameter("product_id");
		try {
			if (session.getAttribute("sessionVO") == null) {
				return "redirect:/logout.do";
			} else {
				AdminVO sessionValue = (AdminVO) session.getAttribute("sessionVO");
				modelVO.addAttribute("account_id", sessionValue.getAccount_id());
				ConsignmentVO parameterVO = new ConsignmentVO();
				parameterVO.setProduct_id(product_id);
				parameterVO.setSelling(null);
				ConsignmentVO consignmentVO = consignmentService.selectConsignmentDetail(parameterVO);
				modelVO.addAttribute("consignmentVO", consignmentVO);
				List<CategoryVO> categoryName = commonService.selectCategoryList(null);
				modelVO.addAttribute("categoryName", categoryName);
			}
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
		}

		return "return-keep/keepProductDetailEdit";
	}

	@RequestMapping(value = "/keepingProductList.json", method = {RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
	public DataTablesOutput<ConsignmentVO> selectConsignmentIspectionList(HttpServletResponse response, HttpServletRequest request, HttpSession session, @RequestBody DataTablesInput input) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		ConsignmentVO parameterVO = new ConsignmentVO();
		AdminVO sessionValue = (AdminVO)session.getAttribute("sessionVO");

		parameterVO.setDataTablesInput(input);
		parameterVO.getSearchMap().put("account_id",sessionValue.getAccount_id());
		List<ConsignmentVO> consignmentVOList = keepingService.selectKeepingProductList(parameterVO.getSearchMap());
		int total = keepingService.selectKeepingProductListTotal(parameterVO.getSearchMap());
		DataTablesOutput<ConsignmentVO> output = new DataTablesOutput<ConsignmentVO>();
		output.setDraw(input.getDraw());
		output.setRecordsTotal(total);
		output.setRecordsFiltered(total);
		output.setData(consignmentVOList);

		return output;
	}


	@RequestMapping(value = "/updateProductInspectionInfo.json", method = { RequestMethod.POST })
	@ResponseBody
	public ModelAndView updateProductInfo(HttpSession session, HttpServletRequest request, @ModelAttribute("parameterVO") ConsignmentVO parameterVO) {
		ModelAndView modelAndView = new ModelAndView("jsonView");
		String whoAmi = Thread.currentThread().getStackTrace()[1].toString();

		try {
			int info_result = consignmentService.updateProductInfo(parameterVO);
			int inspection_result = consignmentService.updateProductInspection(parameterVO);
			int delivery_result = commonService.insertDeliveryInfo(parameterVO);

			if (info_result >= 0 && delivery_result >=0) {
				modelAndView.addObject("resultCode", "success");
				modelAndView.addObject("message", "상품정보 수정성공");
			} else {
				modelAndView.addObject("resultCode", "fail");
				modelAndView.addObject("message", "상품정보 수정실패");
			}
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			modelAndView.addObject("resultCode", "fail");
			modelAndView.addObject("message", "시스템 에러가 발생하였습니다.");
		}

		return modelAndView;
	}


	@RequestMapping(value = "/inspectionComplete.json", method = { RequestMethod.POST })
	@ResponseBody
	public ModelAndView inspectionComplete(HttpSession session, HttpServletRequest request, @ModelAttribute("parameterVO") ConsignmentVO parameterVO) {
		ModelAndView modelAndView = new ModelAndView("jsonView");
		String whoAmi = Thread.currentThread().getStackTrace()[1].toString();

		try {
			ConsignmentVO consignmentVO = consignmentService.selectConsignmentDetail(parameterVO);
			consignmentVO.setChange_type("자동 변경");
			commonService.insertChangePrice(consignmentVO);
			HistoryVO historyVO = new HistoryVO();
			historyVO.setState("보관중");
			historyVO.setProduct_id(parameterVO.getProduct_id());
			int result = historyService.insertProductHistory(historyVO);

			// schedulerService.startScheduler(parameterVO.getProduct_id());

			if (result > 0) {

				NotificationVO notificationVO = new NotificationVO();
				notificationVO.setAccount_id(consignmentVO.getAccount_id());

				if (!consignmentVO.getProduct_grade().equals("D")) {
					notificationVO.setTitle(NotificationMessage.Message.INSPECTNOTD.getMessageTitle());
					notificationVO.setContent(NotificationMessage.getMessage(NotificationMessage.Message.INSPECTNOTD, parameterVO.getProduct_id(), consignmentVO.getProduct_grade()).getMessageContent());
					notificationService.insertInspectionNotification(notificationVO);
				} else if (consignmentVO.getProduct_grade().equals("D")) {
					notificationVO.setTitle(NotificationMessage.Message.INSPECTGRADED.getMessageTitle());
					notificationVO.setContent(NotificationMessage.getMessage(NotificationMessage.Message.INSPECTGRADED, parameterVO.getProduct_id()).getMessageContent());
					notificationService.insertInspectionNotification(notificationVO);
				}

				modelAndView.addObject("resultCode", "success");
				modelAndView.addObject("message", "검수확정 성공");
			} else {
				modelAndView.addObject("resultCode", "fail");
				modelAndView.addObject("message", "검수확정 실패");
			}
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			modelAndView.addObject("resultCode", "fail");
			modelAndView.addObject("message", "시스템 에러가 발생하였습니다.");
		}

		return modelAndView;
	}

	@RequestMapping(value = "/delivery.do", method = {RequestMethod.POST, RequestMethod.GET})
	public String orderDeliveryList(@ModelAttribute("parameterVO") DirectProductManagementVO parameterVO, HttpServletResponse response, HttpServletRequest request, HttpSession session, ModelMap modelVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		try {
			if (session.getAttribute("sessionVO") == null) {
				return "redirect:/logout.do";
			} else {

				AdminVO sessionValue = (AdminVO)session.getAttribute("sessionVO");
				modelVO.addAttribute("account_id", sessionValue.getAccount_id());

				DirectProductManagementVO deliveryCountVO = keepingService.selectKeepingDeliveryCount();
				if(deliveryCountVO == null){
					deliveryCountVO = new DirectProductManagementVO();
				}
				modelVO.addAttribute("deliveryCountVO", deliveryCountVO);

			}
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
		}

		return "/return-keep/delivery";
	}

	@RequestMapping(value = "/keepingDeliveryManagement.json", method = {RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
	public DataTablesOutput<DirectProductManagementVO> orderDeliveryManagement(HttpServletResponse response, HttpServletRequest request, HttpSession session, @RequestBody DataTablesInput input) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		DirectProductManagementVO parameterVO = new DirectProductManagementVO();

		parameterVO.setDataTablesInput(input);
		List<DirectProductManagementVO> productListVO = keepingService.selectKeepingDeliveryProductList(parameterVO.getSearchMap());
		int total = keepingService.selectKeepingDeliveryProductListTotal(parameterVO.getSearchMap());

		DataTablesOutput<DirectProductManagementVO> output = new DataTablesOutput<DirectProductManagementVO>();
		output.setDraw(input.getDraw());
		output.setRecordsTotal(total);
		output.setRecordsFiltered(total);
		output.setData(productListVO);

		return output;
	}
//
//
//	@RequestMapping(value = "/returnDelivery.do", method = {RequestMethod.POST, RequestMethod.GET})
//	public String returnManagement(@ModelAttribute("parameterVO") DirectProductManagementVO parameterVO, HttpSession session, ModelMap modelVO) {
//		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
//
//		DirectProductManagementVO params = new DirectProductManagementVO();
//
//		try {
//			if (session.getAttribute("sessionVO") == null) {
//				return "redirect:/logout.do";
//			} else {
//				DirectProductManagementVO returnCountVO = consignmentService.selectConsignmentReturnCount();
//				if(returnCountVO == null){
//					returnCountVO = new DirectProductManagementVO();
//				}
//				modelVO.addAttribute("returnCountVO", returnCountVO);;
//			}
//		} catch (Exception e) {
//			exceptionFactory.commonException(e, whoAmi);
//		}
//
//		return "/consignment/returnDelivery";
//	}
//
//	@RequestMapping(value = "/returnManagement.json", method = {RequestMethod.POST, RequestMethod.GET})
//	@ResponseBody
//	public DataTablesOutput<DirectProductManagementVO> returnManagement(HttpServletResponse response, HttpServletRequest request, HttpSession session, @RequestBody DataTablesInput input) {
//		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
//		DirectProductManagementVO parameterVO = new DirectProductManagementVO();
//
//		parameterVO.setDataTablesInput(input);
//		List<DirectProductManagementVO> productListVO = consignmentService.selectReturnDeliveryProductList(parameterVO.getSearchMap());
//		int total = consignmentService.selectReturnDeliveryProductListTotal(parameterVO.getSearchMap());
//		DataTablesOutput<DirectProductManagementVO> output = new DataTablesOutput<DirectProductManagementVO>();
//		output.setDraw(input.getDraw());
//		output.setRecordsTotal(total);
//		output.setRecordsFiltered(total);
//		output.setData(productListVO);
//
//		return output;
//	}
}
