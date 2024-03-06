package com.sgsone.returnrescue.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.schedule.SchedulerService;
import com.sgsone.returnrescue.service.*;
import com.sgsone.returnrescue.vo.*;
import com.sgsone.returnrescue.vo.datatable.DataTablesInput;
import com.sgsone.returnrescue.vo.datatable.DataTablesOutput;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.client.HttpClient;
import org.apache.http.config.Registry;
import org.apache.http.config.RegistryBuilder;
import org.apache.http.conn.socket.ConnectionSocketFactory;
import org.apache.http.conn.socket.PlainConnectionSocketFactory;
import org.apache.http.conn.ssl.NoopHostnameVerifier;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.impl.conn.PoolingHttpClientConnectionManager;
import org.apache.http.ssl.SSLContextBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.client.HttpComponentsClientHttpRequestFactory;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import javax.net.ssl.SSLContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

@Controller
@RequestMapping("/consignment")
public class ConsignmentController {

	protected Log logger = LogFactory.getLog(ConsignmentController.class);

	@Autowired
	private ExceptionFactory exceptionFactory;

	@Autowired
	CommonService commonService;

	@Autowired
	ConsignmentService consignmentService;

	@Autowired
	HistoryService historyService;

	@Autowired
	ManagerService managerService;

	@Autowired
	DisabledService disabledService;

	@Autowired
	FileService fileService;

	@Autowired
	SchedulerService schedulerService;

	@Autowired
	NotificationService notificationService;

	@RequestMapping(value = "/inspection.do", method = {RequestMethod.POST, RequestMethod.GET})
	public String selectInsepectionList(@ModelAttribute("parameterVO") ProductListVO parameterVO, HttpServletResponse response, HttpServletRequest request, HttpSession session, ModelMap modelVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		String state = request.getParameter("state");
		AdminVO sessionValue = (AdminVO)session.getAttribute("sessionVO");
		ModelAndView modelAndView = new ModelAndView();
		ManagerVO managerVO = new ManagerVO();

		try {
			if (session.getAttribute("sessionVO") == null) {
				return "redirect:/logout.do";
			}
			if (session.getAttribute("sessionVO") != null) {
				managerVO.setAccount_id(sessionValue.getAccount_id());

				managerVO = managerService.selectManagerAuth(managerVO);

				if (managerVO.isConsign_warehouse_access() == false) {
					return "redirect:/home.do";
				} else {

					ProductCountVO productCountVO = consignmentService.selectConsignmentProductCount();
					modelVO.addAttribute("productCountVO", productCountVO);

					List<CategoryVO> categoryName = commonService.selectCategoryList(null);
					modelVO.addAttribute("categoryName", categoryName);

					modelVO.addAttribute("parameterVO", parameterVO);

					modelVO.addAttribute("product_state", state);
				}
			}
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
		}

		return "consignment/inspection";
	}

	@RequestMapping(value = "/consignmentDetail.do", method = {RequestMethod.POST, RequestMethod.GET})
	public String commissionSaleListDetail(Locale locale, HttpServletResponse response, HttpServletRequest request, HttpSession session, @ModelAttribute("ProductListVO") ProductListVO params, Model modelVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		String product_id = request.getParameter("product_id");
		Boolean isSelling = Boolean.valueOf(request.getParameter("isSelling"));
		try {
			if (session.getAttribute("sessionVO") == null) {
				return "redirect:/logout.do";
			} else{
				AdminVO sessionValue = (AdminVO)session.getAttribute("sessionVO");
				modelVO.addAttribute("account_id", sessionValue.getAccount_id());
				ConsignmentVO parameterVO = new ConsignmentVO();
				parameterVO.setProduct_id(product_id);
				parameterVO.setSelling(isSelling);
				ConsignmentVO consignmentVO = consignmentService.selectConsignmentDetail(parameterVO);
				modelVO.addAttribute("consignmentVO", consignmentVO);

				List<ConsignmentVO> OptionList = consignmentService.selectOptionList(parameterVO);
				modelVO.addAttribute("OptionList", OptionList);

				List<ChangePriceVO> changePriceVOList = commonService.selectChangePriceList(product_id);
				modelVO.addAttribute("changePriceVOList", changePriceVOList);

				List<HistoryVO> historyVOList = historyService.selectHistoryProduct(product_id);
				modelVO.addAttribute("historyVOList", historyVOList);

				List<FileVO> inspectionFileList = commonService.selectInspectionFileList(product_id);
				modelVO.addAttribute("inspectionFileList", inspectionFileList);

				ProductListVO productListVO = new ProductListVO();
				productListVO.setFile_id_list(commonService.selectProductImage(product_id));
				if (productListVO.getFile_id_list().size() == 0) {
					productListVO.setFile_id_list(null);
				}
				modelVO.addAttribute("productListVO", productListVO);

			}
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
		}

		return "consignment/consignmentDetail";
	}


	@RequestMapping(value = "/consignmentDetailEdit.do", method = {RequestMethod.POST, RequestMethod.GET})
	public String itemRegisterSingle(Locale locale, HttpServletResponse response, HttpServletRequest request, HttpSession session, @ModelAttribute("parameterVO") ProductListVO params, Model modelVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		String product_id = request.getParameter("product_id");
		Boolean isSelling = Boolean.valueOf(request.getParameter("isSelling"));

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
				consignmentVO.setSelling(isSelling);
				modelVO.addAttribute("consignmentVO", consignmentVO);
				List<CategoryVO> categoryName = commonService.selectCategoryList(null);
				modelVO.addAttribute("categoryName", categoryName);

				ConsignmentVO selectOptionName = consignmentService.selectOptionName(parameterVO);
				modelVO.addAttribute("optionName", selectOptionName);

				List<ConsignmentVO> OptionList = consignmentService.selectOptionList(parameterVO);
				modelVO.addAttribute("OptionList", OptionList);
				modelVO.addAttribute("Option1", OptionList.get(0).getOptionName1());
				modelVO.addAttribute("Option2", OptionList.get(0).getOptionName2());
				modelVO.addAttribute("Option3", OptionList.get(0).getOptionName3());
				modelVO.addAttribute("Option4", OptionList.get(0).getOptionName4());
				modelVO.addAttribute("Option5", OptionList.get(0).getOptionName5());

				List<FileVO> inspectionFileList = commonService.selectInspectionFileList(product_id);
				modelVO.addAttribute("inspectionFileList", inspectionFileList);

				ProductListVO productListVO = new ProductListVO();
				productListVO.setFile_id_list(commonService.selectProductImage(product_id));
				modelVO.addAttribute("productListVO", productListVO);
			}
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
		}

		return "consignment/consignmentDetailEdit";
	}

	@RequestMapping(value = "/optionInfo.json", method = { RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
	public ModelAndView selectOptionInfo(HttpSession session, HttpServletRequest request, @ModelAttribute("parameterVO") ConsignmentVO parameterVO) {
		ModelAndView modelAndView = new ModelAndView("jsonView");
		String whoAmi = Thread.currentThread().getStackTrace()[1].toString();
		String product_id = request.getParameter("product_id");
		parameterVO.setProduct_id(product_id);

		try {

			List<ConsignmentVO> resultList = consignmentService.selectOptionPrice(parameterVO);

			modelAndView.addObject("resultCode", "success");
			modelAndView.addObject("OptionInfoList", resultList);
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			modelAndView.addObject("resultCode", "fail");
			modelAndView.addObject("message", "시스템 에러가 발생하였습니다.");
		}

		return modelAndView;
	}

	@RequestMapping(value = "/consignmentList.json", method = {RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
	public DataTablesOutput<ConsignmentVO> selectConsignmentIspectionList(HttpServletResponse response, HttpServletRequest request, HttpSession session, @RequestBody DataTablesInput input) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		ConsignmentVO parameterVO = new ConsignmentVO();
		AdminVO sessionValue = (AdminVO)session.getAttribute("sessionVO");

		parameterVO.setDataTablesInput(input);
		parameterVO.getSearchMap().put("account_id",sessionValue.getAccount_id());
		List<ConsignmentVO> consignmentVOList = consignmentService.selectConsignmentList(parameterVO.getSearchMap());
		int total = consignmentService.selectConsignmentListTotal(parameterVO.getSearchMap());
		DataTablesOutput<ConsignmentVO> output = new DataTablesOutput<ConsignmentVO>();
		output.setDraw(input.getDraw());
		output.setRecordsTotal(total);
		output.setRecordsFiltered(total);
		output.setData(consignmentVOList);

		return output;
	}


	@RequestMapping(value = "/updateProductInspectionInfo.json", method = { RequestMethod.POST })
	@ResponseBody
	public ModelAndView updateProductInfo(HttpSession session, HttpServletRequest request, MultipartHttpServletRequest mtfRequest,
										  @RequestParam("params") String params, @RequestParam("files") List<MultipartFile> files) {
		ModelAndView modelAndView = new ModelAndView("jsonView");
		String whoAmi = Thread.currentThread().getStackTrace()[1].toString();
		FileVO fileVO = new FileVO();
		ObjectMapper objectMapper = new ObjectMapper();
		ConsignmentVO consignmentVO = new ConsignmentVO();

		try {
			consignmentVO = objectMapper.readValue(params, ConsignmentVO.class);

//			List<ConsignmentVO> multiOption = consignmentService.selectOptionList(consignmentVO);
//			ConsignmentVO option_id = multiOption.get(0);
//
//			consignmentVO.setOption_id(option_id.getOption_id());
//
			int delete_optionList = consignmentService.deleteOptionList(consignmentVO);

			if (delete_optionList >= 0) {
				if (consignmentVO.getOptionList() != null) {
					for (int i = 0; i < consignmentVO.getOptionList().size(); i++) {

						consignmentVO.setOption1(consignmentVO.getOptionList().get(i).get("option1").toString());
						consignmentVO.setOption2(consignmentVO.getOptionList().get(i).get("option2").toString());
						consignmentVO.setOption3(consignmentVO.getOptionList().get(i).get("option3").toString());
						consignmentVO.setOption4(consignmentVO.getOptionList().get(i).get("option4").toString());
						consignmentVO.setOption5(consignmentVO.getOptionList().get(i).get("option5").toString());
						consignmentVO.setOptionName1(consignmentVO.getOptionList().get(i).get("optionName1").toString());
						consignmentVO.setOptionName2(consignmentVO.getOptionList().get(i).get("optionName2").toString());
						consignmentVO.setOptionName3(consignmentVO.getOptionList().get(i).get("optionName3").toString());
						consignmentVO.setOptionName4(consignmentVO.getOptionList().get(i).get("optionName4").toString());
						consignmentVO.setOptionName5(consignmentVO.getOptionList().get(i).get("optionName5").toString());
						consignmentVO.setOptionPrice(Integer.parseInt((consignmentVO.getOptionList().get(i).get("optionPrice")).toString()));
						consignmentVO.setOptionCount(Integer.parseInt((consignmentVO.getOptionList().get(i).get("optionCount")).toString()));
						consignmentService.insertProductOptionList(consignmentVO);
					}
				} else {
					modelAndView.addObject("resultCode", "fail");
					modelAndView.addObject("message", "옵선정보 수정실패");
				}
			} else {
				modelAndView.addObject("resultCode", "fail");
				modelAndView.addObject("message", "옵션정보 수정실패");
			}

			ConsignmentVO consignmentDetail = consignmentService.selectConsignmentDetail(consignmentVO);
			if(!consignmentDetail.getProduct_state().equals("최종 검수 대기")){
				if(consignmentDetail.getProduct_vprice() != consignmentVO.getProduct_vprice()){
					consignmentVO.setChange_type("관리자 설정");
					commonService.insertChangePrice(consignmentVO);
				}
			}
			int info_result = consignmentService.updateProductInfo(consignmentVO);
			if(consignmentVO.getSelling() != null && consignmentVO.getSelling() == false) {
				int inspection_result = consignmentService.updateProductInspection(consignmentVO);
			}
			int delivery_result = commonService.insertDeliveryInfo(consignmentVO);
			if(consignmentVO.getSelling() != null && consignmentVO.getSelling() == true) {
				List<HistoryVO> historyVOList = historyService.selectHistoryProduct(consignmentVO.getProduct_id());
				if (historyVOList != null && historyVOList.size() != 0 && (!historyVOList.get(historyVOList.size() - 1).getState().equals(consignmentVO.getProduct_state()))) {
					HistoryVO historyVO = new HistoryVO();
					historyVO.setState(consignmentVO.getProduct_state());
					historyVO.setProduct_id(consignmentVO.getProduct_id());
					historyService.insertProductHistory(historyVO);
				}
			}
			if (info_result >= 0 && delivery_result >=0) {

				List<MultipartFile> checkFileList = mtfRequest.getFiles("files");
				int resultCnt = 0;

				for (MultipartFile mf : checkFileList) {
					if (mf.getSize() > 0) {
						FileVO addFileVO = new FileVO();
						addFileVO = fileService.save(mf);

						fileVO.setFile_id(addFileVO.getFile_id());
						fileVO.setProduct_id(consignmentVO.getProduct_id());

						fileService.insertProductImage(fileVO);
						resultCnt++;
					}
				}

				modelAndView.addObject("resultCode", "success");
				modelAndView.addObject("message", "상품정보 수정성공");
			} else {
				modelAndView.addObject("resultCode", "fail");
				modelAndView.addObject("message", "상품정보 수정실패");
			}
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			modelAndView.addObject("resultCode", "fail");
			modelAndView.addObject("message", "수정내용 저장에 실패했습니다. 다시 시도해주세요.");
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
			historyVO.setState("검수완료");
			historyVO.setProduct_id(parameterVO.getProduct_id());
			int result = historyService.insertProductHistory(historyVO);
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

	@RequestMapping(value = "/disabled.json", method = { RequestMethod.POST })
	@ResponseBody
	public ModelAndView disabled(HttpSession session, HttpServletRequest request, @ModelAttribute("parameterVO") OfferManagementVO parameterVO) {
		ModelAndView modelAndView = new ModelAndView("jsonView");
		String whoAmi = Thread.currentThread().getStackTrace()[1].toString();

		try {
			int result = disabledService.insertDisabledProduct(parameterVO);

			if (result > 0) {
				modelAndView.addObject("resultCode", "success");
				modelAndView.addObject("message", "기부/회수/폐기 처리 성공");
			} else {
				modelAndView.addObject("resultCode", "fail");
				modelAndView.addObject("message", "기부/회수/폐기 처리 실패");
			}
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			modelAndView.addObject("resultCode", "fail");
			modelAndView.addObject("message", "시스템 에러가 발생하였습니다.");
		}

		return modelAndView;
	}

	@RequestMapping(value = "/changPrice.json", method = { RequestMethod.POST })
	@ResponseBody
	public ModelAndView changeProductPrice(HttpSession session, HttpServletRequest request, @ModelAttribute("parameterVO") ConsignmentVO parameterVO) {
		ModelAndView modelAndView = new ModelAndView("jsonView");
		String whoAmi = Thread.currentThread().getStackTrace()[1].toString();

		try {
			ConsignmentVO consignmentVO = consignmentService.selectConsignmentDetail(parameterVO);
//			if(consignmentVO.getProduct_state().equals("검수완료")){
//				if(consignmentVO.getProduct_vprice() != parameterVO.getProduct_vprice()){
					parameterVO.setChange_type("관리자 설정");
					commonService.insertChangePrice(parameterVO);
//				}
//			}
			consignmentVO.setProduct_vprice(parameterVO.getProduct_vprice());
			int result = consignmentService.updateProductInfo(consignmentVO);

			if (result > 0) {
				modelAndView.addObject("resultCode", "success");
				modelAndView.addObject("message", "상품가격 변경성공");
			} else {
				modelAndView.addObject("resultCode", "fail");
				modelAndView.addObject("message", "상품가격 변경실패");
			}
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			modelAndView.addObject("resultCode", "fail");
			modelAndView.addObject("message", "시스템 에러가 발생하였습니다.");
		}

		return modelAndView;
	}

	@RequestMapping(value = "/productSale.do", method = {RequestMethod.POST, RequestMethod.GET})
	public String selectConsignmentProductSellingList(@ModelAttribute("parameterVO") ProductListVO parameterVO, HttpServletResponse response, HttpServletRequest request, HttpSession session, ModelMap modelVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		ManagerVO managerVO = new ManagerVO();
		AdminVO sessionValue = (AdminVO)session.getAttribute("sessionVO");

		try {
			if (session.getAttribute("sessionVO") == null) {
				return "redirect:/logout.do";
			}
			if (session.getAttribute("sessionVO") != null) {
				managerVO.setAccount_id(sessionValue.getAccount_id());

				managerVO = managerService.selectManagerAuth(managerVO);

				if (managerVO.isConsign_product_access() == false) {
					return "redirect:/home.do";
				} else {

					ProductCountVO productCountVO = consignmentService.selectConsignmentProductSellingCount();
					modelVO.addAttribute("productCountVO", productCountVO);

					List<CategoryVO> categoryName = commonService.selectCategoryList(null);
					modelVO.addAttribute("categoryName", categoryName);

					modelVO.addAttribute("parameterVO", parameterVO);
				}
			}
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
		}

		return "consignment/productSale";
	}



	@RequestMapping(value = "/sellingList.json", method = {RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
	public DataTablesOutput<ConsignmentVO> selectConsignmentSellingList(HttpServletResponse response, HttpServletRequest request, HttpSession session, @RequestBody DataTablesInput input) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		ConsignmentVO parameterVO = new ConsignmentVO();
		AdminVO sessionValue = (AdminVO)session.getAttribute("sessionVO");

		parameterVO.setDataTablesInput(input);
		parameterVO.getSearchMap().put("account_id",sessionValue.getAccount_id());
		List<ConsignmentVO> consignmentVOList = consignmentService.selectConsignmentSellingList(parameterVO.getSearchMap());
		int total = consignmentService.selectConsignmentSellingListTotal(parameterVO.getSearchMap());
		DataTablesOutput<ConsignmentVO> output = new DataTablesOutput<ConsignmentVO>();
		output.setDraw(input.getDraw());
		output.setRecordsTotal(total);
		output.setRecordsFiltered(total);
		output.setData(consignmentVOList);

		return output;
	}


	@RequestMapping(value = "/orderDelivery.do", method = {RequestMethod.POST, RequestMethod.GET})
	public String orderDeliveryList(@ModelAttribute("parameterVO") DirectProductManagementVO parameterVO, HttpServletResponse response, HttpServletRequest request, HttpSession session, ModelMap modelVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		ManagerVO managerVO = new ManagerVO();
		AdminVO sessionValue = (AdminVO)session.getAttribute("sessionVO");

		try {
			if (session.getAttribute("sessionVO") == null) {
				return "redirect:/logout.do";
			}
			if (session.getAttribute("sessionVO") != null) {
				managerVO.setAccount_id(sessionValue.getAccount_id());

				managerVO = managerService.selectManagerAuth(managerVO);

				if (managerVO.isConsign_delivery_access() == false) {
					return "redirect:/home.do";
				} else {

					modelVO.addAttribute("account_id", sessionValue.getAccount_id());

					DirectProductManagementVO deliveryCountVO = consignmentService.selectConsignDeliveryCount();
					if (deliveryCountVO == null) {
						deliveryCountVO = new DirectProductManagementVO();
					}
					modelVO.addAttribute("deliveryCountVO", deliveryCountVO);
				}
			}
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
		}

		return "/consignment/orderDelivery";
	}

	@RequestMapping(value = "/orderDeliveryManagement.json", method = {RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
	public DataTablesOutput<DirectProductManagementVO> orderDeliveryManagement(HttpServletResponse response, HttpServletRequest request, HttpSession session, @RequestBody DataTablesInput input) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		DirectProductManagementVO parameterVO = new DirectProductManagementVO();

		parameterVO.setDataTablesInput(input);
		List<DirectProductManagementVO> productListVO = consignmentService.selectOrderDeliveryProductList(parameterVO.getSearchMap());
		int total = consignmentService.selectOrderDeliveryProductListTotal(parameterVO.getSearchMap());

		DataTablesOutput<DirectProductManagementVO> output = new DataTablesOutput<DirectProductManagementVO>();
		output.setDraw(input.getDraw());
		output.setRecordsTotal(total);
		output.setRecordsFiltered(total);
		output.setData(productListVO);

		return output;
	}

	@RequestMapping(value = "/selectTrackingNumber.json", method = {RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
	public ModelAndView selectTrackingNumber(HttpSession session, @RequestBody ProductListVO parameterVO) {
		ModelAndView modelAndView = new ModelAndView("jsonView");
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		try {
			List<DirectProductManagementVO> trackingNumber = consignmentService.selectTrackingNumber(parameterVO);
			consignmentService.updateTrackingNumberFlag(parameterVO);

			if (trackingNumber != null && !trackingNumber.equals("")) {
				modelAndView.addObject("resultCode", "success");
				modelAndView.addObject("trackingNumber", trackingNumber);
			}

		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			modelAndView.addObject("resultCode", "fail");
			modelAndView.addObject("message", "시스템 에러가 발생하였습니다.");
		}

		return modelAndView;
	}


	@RequestMapping(value = "/selectTrackingNumberFlag.json", method = {RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
	public ModelAndView selectTrackingNumberFlag(HttpSession session, @RequestBody ProductListVO parameterVO) {
		ModelAndView modelAndView = new ModelAndView("jsonView");
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		try {
			List<DirectProductManagementVO> selectTrackingNumberFlag = consignmentService.selectTrackingNumberFlag(parameterVO);

			if (selectTrackingNumberFlag != null && !selectTrackingNumberFlag.equals("")) {
				modelAndView.addObject("resultCode", "success");
				modelAndView.addObject("selectTrackingNumberFlag", selectTrackingNumberFlag);
			} else {
				modelAndView.addObject("resultCode", "fail");
				modelAndView.addObject("message", "송장번호 등록 조회 실패");
			}

		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			modelAndView.addObject("resultCode", "fail");
			modelAndView.addObject("message", "시스템 에러가 발생하였습니다.");
		}

		return modelAndView;
	}

	@RequestMapping(value = "/updateTrackingNumberFlag.json", method = {RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
	public ModelAndView updateTrackingNumberFlag(HttpSession session, @RequestBody ProductListVO parameterVO) {
		ModelAndView modelAndView = new ModelAndView("jsonView");
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		try {
			int updateTrackingNumberFlag = consignmentService.updateTrackingNumberFlag(parameterVO);

			if (updateTrackingNumberFlag > 0) {
				modelAndView.addObject("resultCode", "success");
			} else {
				modelAndView.addObject("resultCode", "fail");
				modelAndView.addObject("message", "송장번호 등록 실패");
			}

		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			modelAndView.addObject("resultCode", "fail");
			modelAndView.addObject("message", "시스템 에러가 발생하였습니다.");
		}

		return modelAndView;
	}

	@RequestMapping(value = "/selectDeliveryInfo.json", method = {RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
	public ModelAndView selectDeliveryInfo(HttpSession session, @RequestBody ProductListVO parameterVO) {
		ModelAndView modelAndView = new ModelAndView("jsonView");
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		try {
			List<Map<String, Object>> deliveryInfo = consignmentService.selectDeliveryInfo(parameterVO);

			if (deliveryInfo != null && !deliveryInfo.equals("")) {
				modelAndView.addObject("resultCode", "success");
				modelAndView.addObject("deliveryInfo", deliveryInfo);
			}

		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			modelAndView.addObject("resultCode", "fail");
			modelAndView.addObject("message", "시스템 에러가 발생하였습니다.");
		}

		return modelAndView;
	}

	@RequestMapping(value = "/transToHanjin.json", method = {RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
	public ModelAndView transToHanjin(HttpSession session, @RequestBody ProductListVO parameterVO) {
		ModelAndView modelAndView = new ModelAndView("jsonView");
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		try {
			List<ProductListVO> deliveryStateList = historyService.selectDeliveryState(parameterVO);
			List<String> trackingNoList = new ArrayList<>();
			for (ProductListVO delivery : deliveryStateList) {
				trackingNoList.add(delivery.getTracking_number());
			}
			parameterVO.setTracking_number_list(trackingNoList);

			///모든 인증서 무시
			HttpClientBuilder httpClientBuilder = HttpClientBuilder.create();

			// 모든 인증서를 신뢰하도록 설정한다
			SSLContext sslContext = new SSLContextBuilder().loadTrustMaterial(null, (X509Certificate[] chain, String authType) -> true).build();
			httpClientBuilder.setSSLContext(sslContext);

			// Https 인증 요청시 호스트네임 유효성 검사를 진행하지 않게 한다.
			SSLConnectionSocketFactory sslSocketFactory = new SSLConnectionSocketFactory(sslContext, NoopHostnameVerifier.INSTANCE);
			Registry<ConnectionSocketFactory> socketFactoryRegistry = RegistryBuilder.<ConnectionSocketFactory>create()
					.register("http", PlainConnectionSocketFactory.getSocketFactory())
					.register("https", sslSocketFactory).build();

			PoolingHttpClientConnectionManager connMgr = new PoolingHttpClientConnectionManager(socketFactoryRegistry);
			httpClientBuilder.setConnectionManager(connMgr);

			// RestTemplate 와 HttpClient 연결
			HttpClient httpClient = httpClientBuilder.build();
			HttpComponentsClientHttpRequestFactory requestFactory = new HttpComponentsClientHttpRequestFactory();
			requestFactory.setHttpClient(httpClient);

			RestTemplate restTemplate = new RestTemplate(requestFactory);

			String url = "https://therecommerce.kr:8981/voomerang/hanjin/orderDeliveryTrans/list";
			HttpHeaders httpHeaders = new HttpHeaders();
			httpHeaders.setContentType(MediaType.APPLICATION_JSON);
			HttpEntity<ProductListVO> logRequest = new HttpEntity<>(parameterVO, httpHeaders);
			String result = restTemplate.postForObject(url, logRequest, String.class);
			if (deliveryStateList != null && deliveryStateList.size() != 0) {
				modelAndView.addObject("resultCode", "success");
				modelAndView.addObject("deliveryStateList", deliveryStateList);
			} else {
				modelAndView.addObject("resultCode", "fail");
				modelAndView.addObject("message", "조회 목록이 없습니다.");
			}


		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			modelAndView.addObject("resultCode", "fail");
			modelAndView.addObject("message", "시스템 에러가 발생하였습니다.");
		}

		return modelAndView;
	}


	@RequestMapping(value = "/orderDeliveryDetail.json", method = {RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
	public ModelAndView updateProductStatus(HttpSession session, HttpServletRequest request, @ModelAttribute("parameterVO") ProductListVO parameterVO) {
        ModelAndView modelAndView = new ModelAndView("jsonView");
        String whoAmi = Thread.currentThread().getStackTrace()[1].toString();

        try {

            AdminVO loginVO = (AdminVO) session.getAttribute("sessionVO");

            if(loginVO != null) {
                DirectProductManagementVO productListVO = consignmentService.selectOrderDeliveryDetail(parameterVO);
				productListVO.setHistory_list(consignmentService.selectDeliveryHistory(parameterVO));

                modelAndView.addObject("data", productListVO);
                modelAndView.addObject("resultCode", "success");
                modelAndView.addObject("message", "조회성공");
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            modelAndView.addObject("resultCode", "fail");
            modelAndView.addObject("message", "시스템 에러가 발생하였습니다.");
        }

        return modelAndView;
    }

	@RequestMapping(value = "/returnDelivery.do", method = {RequestMethod.POST, RequestMethod.GET})
	public String returnManagement(@ModelAttribute("parameterVO") DirectProductManagementVO parameterVO, HttpSession session, ModelMap modelVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		AdminVO sessionValue = (AdminVO)session.getAttribute("sessionVO");
		DirectProductManagementVO params = new DirectProductManagementVO();
		ManagerVO managerVO = new ManagerVO();

		try {
			if (session.getAttribute("sessionVO") == null) {
				return "redirect:/logout.do";
			}
			if (session.getAttribute("sessionVO") != null) {
				managerVO.setAccount_id(sessionValue.getAccount_id());

				managerVO = managerService.selectManagerAuth(managerVO);

				if (managerVO.isConsign_return_access() == false) {
					return "redirect:/home.do";
				} else {
					DirectProductManagementVO returnCountVO = consignmentService.selectConsignmentReturnCount();
					if (returnCountVO == null) {
						returnCountVO = new DirectProductManagementVO();
					}
					modelVO.addAttribute("returnCountVO", returnCountVO);
					;
				}
			}
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
		}

		return "/consignment/returnDelivery";
	}

	@RequestMapping(value = "/returnManagement.json", method = {RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
	public DataTablesOutput<DirectProductManagementVO> returnManagement(HttpServletResponse response, HttpServletRequest request, HttpSession session, @RequestBody DataTablesInput input) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		DirectProductManagementVO parameterVO = new DirectProductManagementVO();

		parameterVO.setDataTablesInput(input);
		List<DirectProductManagementVO> productListVO = consignmentService.selectReturnDeliveryProductList(parameterVO.getSearchMap());
		int total = consignmentService.selectReturnDeliveryProductListTotal(parameterVO.getSearchMap());
		DataTablesOutput<DirectProductManagementVO> output = new DataTablesOutput<DirectProductManagementVO>();
		output.setDraw(input.getDraw());
		output.setRecordsTotal(total);
		output.setRecordsFiltered(total);
		output.setData(productListVO);

		return output;
	}

	@RequestMapping(value = "/uploadExcelConsign.json", method = { RequestMethod.POST })
	@ResponseBody
	public ModelAndView uploadExcelConsign(HttpSession session, HttpServletRequest request, MultipartHttpServletRequest mtfRequest) {
		ModelAndView modelAndView = new ModelAndView("jsonView");
		String whoAmi = Thread.currentThread().getStackTrace()[1].toString();
		ProductListVO productListVO = new ProductListVO();

		try {

			productListVO.setAccount_id(mtfRequest.getParameter("account_id"));
			productListVO.setSell_type(mtfRequest.getParameter("sell_type"));
			productListVO.setSmartstore_name(mtfRequest.getParameter("sellsite"));
			productListVO.setSmartstore_order_no(mtfRequest.getParameter("smartstore_order_no"));
			productListVO.setProduct_id(mtfRequest.getParameter("product_id"));
			productListVO.setProduct_name(mtfRequest.getParameter("product_name"));
			productListVO.setProduct_option1(mtfRequest.getParameter("productOption"));
			productListVO.setProduct_price(Integer.parseInt(mtfRequest.getParameter("product_price")));
			productListVO.setOrder_product_count(Integer.parseInt(mtfRequest.getParameter("order_product_count")));
			productListVO.setOrder_rcv_name(mtfRequest.getParameter("purchaseName"));
			productListVO.setPurchaser_phone(mtfRequest.getParameter("purchasePhone"));
			productListVO.setOrder_rcv_zip(mtfRequest.getParameter("zipcode"));
			productListVO.setOrder_rcv_addr1(mtfRequest.getParameter("rcvAddr1"));
			productListVO.setOrder_rcv_addr2(mtfRequest.getParameter("rcvAddr2"));
			productListVO.setOrder_request_dt(mtfRequest.getParameter("payDay"));
			productListVO.setOrder_send_name(mtfRequest.getParameter("rcvName"));
			productListVO.setOrder_send_phone(mtfRequest.getParameter("rcvPhone1"));
			productListVO.setOrder_request_message(mtfRequest.getParameter("deliverMessage"));
			productListVO.setPayment_dt(mtfRequest.getParameter("payDay"));
			productListVO.setPayment_method(mtfRequest.getParameter("payMethod"));

			if (productListVO.getSell_type() == "반품위탁") {
				int count = consignmentService.selectProductDeliveryInfo(productListVO);
				if (count >= 1) {
					modelAndView.addObject("resultCode", "fail");
					modelAndView.addObject("message", "이미 주문 정보가 입력된 반품위탁 상품입니다.");
					return modelAndView;
				}
			}

			int product_count = consignmentService.selectProductCount(productListVO);
			if (product_count < productListVO.getOrder_product_count()) {
				modelAndView.addObject("resultCode", "fail");
				modelAndView.addObject("message", "상품 재고 수량보다 많은 수량을 주문했습니다. 현재 상품 재고:" + product_count + "개");
				return modelAndView;
			}

			int result = consignmentService.insertDeliveryOrderConsign(productListVO);
			if (result != 0) {
				modelAndView.addObject("resultCode", "fail");
				modelAndView.addObject("message", "주문정보 등록 실패. 입력한 내용을 다시 확인해주세요.");
				return modelAndView;
			}
			int insertExcel = consignmentService.insertExcelDeliveryOrder(productListVO);
			if (insertExcel < 0) {
				modelAndView.addObject("resultCode", "fail");
				modelAndView.addObject("message", "주문정보 등록 실패. 입력한 내용을 다시 확인해주세요.");
				return modelAndView;
			}
//			ProductListVO selectDeliveryNumber = consignmentService.selectDeliveryNumber(productListVO);
			productListVO.setProduct_state("결제완료");
			productListVO.setDelivery_type("주문");
			int insertHistory = consignmentService.insertDeliveryHistory(productListVO);
			if (insertHistory < 0) {
				modelAndView.addObject("resultCode", "fail");
				modelAndView.addObject("message", "주문내역 저장 실패.");
				return modelAndView;
			}
			int updateSellType = consignmentService.updateProductSellType(productListVO);
			if (updateSellType < 0) {
				modelAndView.addObject("resultCode", "fail");
				modelAndView.addObject("message", "상품판매유형 변경 실패.");
				return modelAndView;
			}

			modelAndView.addObject("resultCode", "success");
			modelAndView.addObject("message", "주문등록 성공");
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			modelAndView.addObject("resultCode", "fail");
			modelAndView.addObject("message", "시스템 에러가 발생하였습니다.");
			return modelAndView;
		}

		return modelAndView;
	}

	@RequestMapping(value = "/uploadExcelReturnDelivery.json", method = { RequestMethod.POST })
	@ResponseBody
	public ModelAndView uploadExcelReturnDelivery(HttpSession session, HttpServletRequest request, MultipartHttpServletRequest mtfRequest) {
		ModelAndView modelAndView = new ModelAndView("jsonView");
		String whoAmi = Thread.currentThread().getStackTrace()[1].toString();
		ProductListVO productListVO = new ProductListVO();

		try {

			productListVO.setSmartstore_name(mtfRequest.getParameter("sellsite"));
			productListVO.setSmartstore_order_no(mtfRequest.getParameter("smartstore_order_no"));
			productListVO.setProduct_id(mtfRequest.getParameter("product_id"));
			productListVO.setProduct_name(mtfRequest.getParameter("product_name"));
			productListVO.setProduct_option1(mtfRequest.getParameter("productOption"));
			productListVO.setProduct_price(Integer.parseInt(mtfRequest.getParameter("product_price")));
			productListVO.setOrder_product_count(Integer.parseInt(mtfRequest.getParameter("order_product_count")));
			productListVO.setPurchaser_name(mtfRequest.getParameter("purchaseName"));
			productListVO.setPurchaser_phone(mtfRequest.getParameter("purchasePhone"));
			productListVO.setOrder_rcv_addr1(mtfRequest.getParameter("rcvAddr1"));
			productListVO.setOrder_rcv_addr2(mtfRequest.getParameter("rcvAddr2"));
			productListVO.setOrder_request_dt(mtfRequest.getParameter("payDay"));
			productListVO.setOrder_rcv_name(mtfRequest.getParameter("rcvName"));
			productListVO.setOrder_rcv_phone(mtfRequest.getParameter("rcvPhone1"));
			productListVO.setOrder_rcv_phone2(mtfRequest.getParameter("rcvPhone2"));
			productListVO.setOrder_request_message(mtfRequest.getParameter("deliverMessage"));
			productListVO.setSell_type(mtfRequest.getParameter("sell_type"));
			productListVO.setPayment_dt(mtfRequest.getParameter("payDay"));
			productListVO.setPayment_method(mtfRequest.getParameter("payMethod"));

			int count = consignmentService.selectProductDeliveryInfo(productListVO);
			if (count >= 1) {
				modelAndView.addObject("resultCode", "fail");
				modelAndView.addObject("message", "이미 주문 정보가 입력된 상품입니다.");
				return modelAndView;
			}

			int product_count = consignmentService.selectProductCount(productListVO);
			if (product_count < productListVO.getOrder_product_count()) {
				modelAndView.addObject("resultCode", "fail");
				modelAndView.addObject("message", "상품 재고 수량보다 많은 수량을 주문했습니다. 현재 상품 재고:" + product_count + "개");
				return modelAndView;
			}

			consignmentService.minusProductCount(productListVO);

			int result = consignmentService.insertDeliveryRequestReturnDelivery(productListVO);
			if (result != 0) {
				modelAndView.addObject("resultCode", "fail");
				modelAndView.addObject("message", "주문정보 등록 실패. 입력한 내용을 다시 확인해주세요.");
				return modelAndView;
			}
			int insertExcel = consignmentService.insertExcelDeliveryOrderReturnDelivery(productListVO);
			if (insertExcel < 0) {
				modelAndView.addObject("resultCode", "fail");
				modelAndView.addObject("message", "주문정보 등록 실패. 입력한 내용을 다시 확인해주세요.");
				return modelAndView;
			}

			productListVO.setProduct_state("배송요청");
			productListVO.setDelivery_type("주문");
			int insertHistory = consignmentService.insertDeliveryHistory(productListVO);
			if (insertHistory < 0) {
				modelAndView.addObject("resultCode", "fail");
				modelAndView.addObject("message", "주문내역 저장 실패.");
				return modelAndView;
			}

			modelAndView.addObject("resultCode", "success");
			modelAndView.addObject("message", "주문등록 성공");
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			modelAndView.addObject("resultCode", "fail");
			modelAndView.addObject("message", "시스템 에러가 발생하였습니다.");
			return modelAndView;
		}

		return modelAndView;
	}

	@RequestMapping(value = "/updatePostInfo.json", method = { RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
	public ModelAndView updatePostInfo(HttpSession session, HttpServletRequest request, @RequestBody DirectProductManagementVO parameterVO) {
		ModelAndView modelAndView = new ModelAndView("jsonView");
		String whoAmi = Thread.currentThread().getStackTrace()[1].toString();
		ProductListVO productListVO = new ProductListVO();

		try {
			int delivery_company_result = consignmentService.updatePostInfo(parameterVO);
			int delivery_number_result = consignmentService.updatePostTrackingNumber(parameterVO);

			if (delivery_company_result > 0) {
				if (delivery_number_result > 0) {
					consignmentService.updatePostState(parameterVO);
					productListVO.setDelivery_type("주문");
					productListVO.setProduct_state("배송중");
					if (parameterVO.getDelivery_no() == null) {
						productListVO.setDelivery_no_list(parameterVO.getDelivery_no_list());
					} else {
						productListVO.setDelivery_no(parameterVO.getDelivery_no());
					}
					consignmentService.insertDeliveryHistory(productListVO);


					modelAndView.addObject("resultCode", "success");
					modelAndView.addObject("message", "배송정보 변경성공");
				}
			} else {
				modelAndView.addObject("resultCode", "fail");
				modelAndView.addObject("message", "배송정보 변경실패");
			}

		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			modelAndView.addObject("resultCode", "fail");
			modelAndView.addObject("message", "시스템 에러가 발생하였습니다.");
		}

		return modelAndView;
	}


	@RequestMapping(value = "/updatePostInfoPrint.json", method = { RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
	public ModelAndView updatePostInfoPrint(HttpSession session, HttpServletRequest request, @RequestBody DirectProductManagementVO parameterVO) {
		ModelAndView modelAndView = new ModelAndView("jsonView");
		String whoAmi = Thread.currentThread().getStackTrace()[1].toString();
		ProductListVO productListVO = new ProductListVO();

		try {
			int delivery_company_result = consignmentService.updatePostInfo(parameterVO);
			int delivery_number_result = consignmentService.updatePostTrackingNumber(parameterVO);

			if (delivery_company_result > 0) {
				if (delivery_number_result > 0) {
					modelAndView.addObject("resultCode", "success");
					modelAndView.addObject("message", "배송정보 변경성공");
				}
			} else {
				modelAndView.addObject("resultCode", "fail");
				modelAndView.addObject("message", "배송정보 변경실패");
			}

		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			modelAndView.addObject("resultCode", "fail");
			modelAndView.addObject("message", "시스템 에러가 발생하였습니다.");
		}

		return modelAndView;
	}

	@RequestMapping(value = "/startSelling.json", method = { RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
	public ModelAndView startSelling(HttpSession session, HttpServletRequest request, @RequestBody DirectProductManagementVO parameterVO) {
		ModelAndView modelAndView = new ModelAndView("jsonView");
		String whoAmi = Thread.currentThread().getStackTrace()[1].toString();

		try {
			int result = -1;
//			int result = consignmentService.insertSellingState(parameterVO);
			for (int i = 0; i < parameterVO.getProduct_id_list().size(); i++) {
				parameterVO.setProduct_id(parameterVO.getProduct_id_list().get(i));
				// result = consignmentService.insertSellingState(parameterVO);

				// schedulerService.stopScheduler(parameterVO.getProduct_id_list().get(i));
				HttpClientBuilder httpClientBuilder = HttpClientBuilder.create();

				// 모든 인증서를 신뢰하도록 설정한다
				SSLContext sslContext = new SSLContextBuilder().loadTrustMaterial(null, (X509Certificate[] chain, String authType) -> true).build();
				httpClientBuilder.setSSLContext(sslContext);

				// Https 인증 요청시 호스트네임 유효성 검사를 진행하지 않게 한다.
				SSLConnectionSocketFactory sslSocketFactory = new SSLConnectionSocketFactory(sslContext, NoopHostnameVerifier.INSTANCE);
				Registry<ConnectionSocketFactory> socketFactoryRegistry = RegistryBuilder.<ConnectionSocketFactory>create()
						.register("http", PlainConnectionSocketFactory.getSocketFactory())
						.register("https", sslSocketFactory).build();

				PoolingHttpClientConnectionManager connMgr = new PoolingHttpClientConnectionManager(socketFactoryRegistry);
				httpClientBuilder.setConnectionManager(connMgr);

				// RestTemplate 와 HttpClient 연결
				HttpClient httpClient = httpClientBuilder.build();
				HttpComponentsClientHttpRequestFactory requestFactory = new HttpComponentsClientHttpRequestFactory();
				requestFactory.setHttpClient(httpClient);

				RestTemplate restTemplate = new RestTemplate(requestFactory);

				String url = "https://therecommerce.kr/naver/product/regist/" + parameterVO.getProduct_id_list().get(i);
				//        RestTemplate restTemplate = new RestTemplate();
				restTemplate.postForEntity(url, null , String.class);

			}


			if (result > 0) {
				modelAndView.addObject("resultCode", "success");
				modelAndView.addObject("message", "배송정보 변경성공");
			} else {
				modelAndView.addObject("resultCode", "fail");
				modelAndView.addObject("message", "배송정보 변경실패");
			}
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			modelAndView.addObject("resultCode", "fail");
			modelAndView.addObject("message", "시스템 에러가 발생하였습니다.");
		}

		return modelAndView;
	}

	@RequestMapping(value = "/trackingPrint.json", method = { RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
	public ModelAndView trackingPrint(HttpSession session, HttpServletRequest request, @RequestBody ProductListVO parameterVO) {
		ModelAndView modelAndView = new ModelAndView("jsonView");
		String whoAmi = Thread.currentThread().getStackTrace()[1].toString();

		try {

			List<ProductListVO> trakingPrintContent = consignmentService.selectTrackingPrintContent(parameterVO);

			modelAndView.addObject("resultCode", "success");
			modelAndView.addObject("message", "출력시작합니다.");
			modelAndView.addObject("content", trakingPrintContent);
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			modelAndView.addObject("resultCode", "fail");
			modelAndView.addObject("message", "시스템 에러가 발생하였습니다.");
		}
		return modelAndView;
	}
}
