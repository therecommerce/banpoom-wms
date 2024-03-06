package com.sgsone.returnrescue.controller;

import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.service.CommonService;
import com.sgsone.returnrescue.service.DirectProductSaleManagementService;
import com.sgsone.returnrescue.service.HistoryService;
import com.sgsone.returnrescue.service.UserManagementService;
import com.sgsone.returnrescue.service.WarehouseService;
import com.sgsone.returnrescue.vo.*;
import com.sgsone.returnrescue.vo.datatable.DataTablesInput;
import com.sgsone.returnrescue.vo.datatable.DataTablesOutput;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Locale;

@Controller
@RequestMapping(value = "/inventory")
public class InventoryController {

    @Autowired
    private ExceptionFactory exceptionFactory;

    @Autowired
    UserManagementService userManagementService;

	@Autowired
	private WarehouseService warehouseService;

	@Autowired
	private HistoryService historyService;

    @Autowired
    CommonService commonService;

    @RequestMapping(value = "/location.do", method = {RequestMethod.POST, RequestMethod.GET})
    public String location(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session, @ModelAttribute("parameterVO") UserManagementVO parameterVO, ModelMap modelVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            if (session.getAttribute("sessionVO") == null) {
                return "redirect:/logout.do";
            } else {
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }

        return "/inventory/location";
    }

    @RequestMapping(value = "/rackList.json", method = { RequestMethod.POST, RequestMethod.GET })
    @ResponseBody
    public DataTablesOutput<RackVO> rackproduct(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session, @RequestBody DataTablesInput input) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
			RackVO parameterVO = new RackVO();
			parameterVO.setDataTablesInput(input);
			parameterVO.setRack_id((String)parameterVO.getSearchMap().get("rack_id"));


			List<RackVO> resultList = warehouseService.selectRackList(parameterVO.getSearchMap());
            int total = warehouseService.selectRackListTotal(parameterVO.getSearchMap());

			if(resultList != null) {
	            DataTablesOutput<RackVO> output = new DataTablesOutput<RackVO>();
	            output.setDraw(input.getDraw());
	            output.setRecordsTotal(total);
	            output.setRecordsFiltered(total);
	            output.setData(resultList);

	            return output;
			}


        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
        return null;
    }


    @RequestMapping(value = "/inboundshipping.do", method = {RequestMethod.POST, RequestMethod.GET})
    public String inboundshipping(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session, @ModelAttribute("parameterVO") UserManagementVO parameterVO, ModelMap modelVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            if (session.getAttribute("sessionVO") == null) {
                return "redirect:/logout.do";
            } else {
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }

        return "/inventory/inboundshipping";
    }

    @RequestMapping(value = "/inboundshippingList.json", method = { RequestMethod.POST, RequestMethod.GET })
    @ResponseBody
    public DataTablesOutput<InspectionVO> inboundshippingList(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session, @RequestBody DataTablesInput input) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        AdminVO loginVO = (AdminVO)session.getAttribute("sessionVO");
        InspectionVO parameterVO = new InspectionVO();

        try {
            parameterVO.setDataTablesInput(input);


            List<InspectionVO> dataList = warehouseService.selectProductInspection(parameterVO.getSearchMap());
            int total = warehouseService.selectProductInspectionTotal(parameterVO.getSearchMap());

            DataTablesOutput<InspectionVO> output = new DataTablesOutput<InspectionVO>();
            output.setDraw(input.getDraw());
            output.setRecordsTotal(total);
            output.setRecordsFiltered(total);
            output.setData(dataList);

            return output;

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    @RequestMapping(value = "/outboundshipping.do", method = {RequestMethod.POST, RequestMethod.GET})
    public String outboundshipping(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session, @ModelAttribute("parameterVO") UserManagementVO parameterVO, ModelMap modelVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            if (session.getAttribute("sessionVO") == null) {
                return "redirect:/logout.do";
            } else {
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }

        return "/inventory/outboundshipping";
    }

    @RequestMapping(value = "/outboundshippingList.json", method = { RequestMethod.POST, RequestMethod.GET })
    @ResponseBody
    public DataTablesOutput<InventoryVO> outboundshippingList(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session, @RequestBody DataTablesInput input) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        AdminVO loginVO = (AdminVO)session.getAttribute("sessionVO");
        InventoryVO parameterVO = new InventoryVO();

        try {
            parameterVO.setDataTablesInput(input);


            List<InventoryVO> dataList = warehouseService.selectProductReleaseList(parameterVO.getSearchMap());
            int total = warehouseService.selectProductReleaseListCount(parameterVO.getSearchMap());

            DataTablesOutput<InventoryVO> output = new DataTablesOutput<InventoryVO>();
            output.setDraw(input.getDraw());
            output.setRecordsTotal(total);
            output.setRecordsFiltered(total);
            output.setData(dataList);

            return output;

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }


    @RequestMapping(value = "/inspectionState.json", method = { RequestMethod.POST })
    @ResponseBody
    public ModelAndView inspectionState(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session, ModelMap modelVO) {
        ModelAndView modelAndView = new ModelAndView("jsonView");
        String whoAmi = Thread.currentThread().getStackTrace()[1].toString();
        AdminVO sessionValue  = (AdminVO)session.getAttribute("sessionVO");

		InspectionVO parameterVO = new InspectionVO();
		parameterVO.setAccount_id(sessionValue.getAccount_id());
		parameterVO.setCheck_yn("N");

        try {
			List<InspectionVO> resultList = warehouseService.selectProductInspection(parameterVO.getSearchMap());
			if(resultList != null && resultList.size() > 0) {
                modelAndView.addObject("resultCode", "success");
                modelAndView.addObject("inspection", resultList.get(0));
			}
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            modelAndView.addObject("resultCode", "fail");
            modelAndView.addObject("message", "시스템 에러가 발생하였습니다.");
        }
        return modelAndView;
    }

    //제고관리
    @RequestMapping(value = "/stockmanage.do", method = {RequestMethod.POST, RequestMethod.GET})
    public String stockmanage(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session, @ModelAttribute("parameterVO") UserManagementVO parameterVO, ModelMap modelVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            if (session.getAttribute("sessionVO") == null) {
                return "redirect:/logout.do";
            } else {
                List<CategoryVO> categoryName = commonService.selectCategoryList(null);
                modelVO.addAttribute("categoryName", categoryName);

            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }

        return "/inventory/stockmanage";
    }

    @RequestMapping(value = "/stockManageList.json", method = { RequestMethod.POST, RequestMethod.GET })
    @ResponseBody
    public DataTablesOutput<InventoryVO> stockManageList(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session, @RequestBody DataTablesInput input) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            InventoryVO parameterVO = new InventoryVO();
            parameterVO.setDataTablesInput(input);

            List<InventoryVO> resultList = warehouseService.selectInventoryList(parameterVO.getSearchMap());
            int total = warehouseService.selectInventoryListCount(parameterVO.getSearchMap());
			if(resultList != null) {
	            DataTablesOutput<InventoryVO> output = new DataTablesOutput<InventoryVO>();
	            output.setDraw(input.getDraw());
	            output.setRecordsTotal(total);
	            output.setRecordsFiltered(total);
	            output.setData(resultList);

	            return output;
			}
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
        return null;
    }




    //출고 검수 메인.
    @RequestMapping(value = "/releaseinspection.do", method = {RequestMethod.POST, RequestMethod.GET})
    public String releaseinspection(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session, @ModelAttribute("parameterVO") UserManagementVO parameterVO, ModelMap modelVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            if (session.getAttribute("sessionVO") == null) {
                return "redirect:/logout.do";
            } else {
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }

        return "/inventory/releaseinspection";
    }


    @RequestMapping(value = "/releaseInspectionList.json", method = { RequestMethod.POST, RequestMethod.GET })
    @ResponseBody
    public DataTablesOutput<InventoryVO> releaseInspectionList(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session, @RequestBody DataTablesInput input) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            AdminVO sessionValue  = (AdminVO)session.getAttribute("sessionVO");

            InventoryVO parameterVO = new InventoryVO();
            parameterVO.setDataTablesInput(input);
			parameterVO.setAccount_id(sessionValue.getAccount_id());
			if(parameterVO.getSearchMap() != null && parameterVO.getSearchMap().get("tracking_no") != null) {
				parameterVO.setTracking_no((String)parameterVO.getSearchMap().get("tracking_no"));

			}

			List<InventoryVO> resultList = warehouseService.selectProductReleaseInspection(parameterVO);
			int total = warehouseService.selectProductReleaseInspectionCount(parameterVO);
			if(resultList != null) {
	            DataTablesOutput<InventoryVO> output = new DataTablesOutput<InventoryVO>();
	            output.setDraw(input.getDraw());
	            output.setRecordsTotal(total);
	            output.setRecordsFiltered(resultList.size());
	            output.setData(resultList);

	            return output;
			}
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
        return null;
    }

    @RequestMapping(value = "/releaseInspectionState.json", method = { RequestMethod.POST })
    @ResponseBody
    public ModelAndView releaseInspectionState(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session, ModelMap modelVO, @ModelAttribute("parameterVO") InventoryVO parameterVO) {
        ModelAndView modelAndView = new ModelAndView("jsonView");
        String whoAmi = Thread.currentThread().getStackTrace()[1].toString();
        AdminVO sessionValue  = (AdminVO)session.getAttribute("sessionVO");

		parameterVO.setAccount_id(sessionValue.getAccount_id());
		parameterVO.setCheck_yn("N");

        try {
        	InventoryVO result = warehouseService.selectProductReleaseState(parameterVO);
			if(result != null) {
                modelAndView.addObject("resultCode", "success");
                modelAndView.addObject("inspection", result);
			} else {
                modelAndView.addObject("resultCode", "notfound");
			}
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            modelAndView.addObject("resultCode", "fail");
            modelAndView.addObject("message", "시스템 에러가 발생하였습니다.");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/releaseInspectionFinish.json", method = { RequestMethod.POST })
    @ResponseBody
    public ModelAndView releaseInspectionFinish(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session, ModelMap modelVO, @ModelAttribute("parameterVO") InventoryVO parameterVO) {
        ModelAndView modelAndView = new ModelAndView("jsonView");
        String whoAmi = Thread.currentThread().getStackTrace()[1].toString();
        AdminVO sessionValue  = (AdminVO)session.getAttribute("sessionVO");

		parameterVO.setAccount_id(sessionValue.getAccount_id());
		parameterVO.setCheck_yn("Y");

        try {

			HistoryVO historyVO = new HistoryVO();
			historyVO.setProduct_id(parameterVO.getProduct_id());
			historyVO.setState("배송중");

			historyService.insertProductHistory(historyVO);
        	int result = warehouseService.updateProductReleaseState(parameterVO);

            warehouseService.updateProductCount(parameterVO);
            warehouseService.updateProductCommissionRelease(parameterVO);


			if(result > 0 ) {
                modelAndView.addObject("resultCode", "success");
                modelAndView.addObject("inspection", result);
			}
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            modelAndView.addObject("resultCode", "fail");
            modelAndView.addObject("message", "시스템 에러가 발생하였습니다.");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/deliverymanage.do", method = {RequestMethod.POST, RequestMethod.GET})
    public String deliverymanage(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session, @ModelAttribute("parameterVO") UserManagementVO parameterVO, ModelMap modelVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            if (session.getAttribute("sessionVO") == null) {
                return "redirect:/logout.do";
            } else {
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }

        return "/inventory/deliverymanage";
    }

    @RequestMapping(value = "/deliverymanageList.json", method = { RequestMethod.POST, RequestMethod.GET })
    @ResponseBody
    public DataTablesOutput<InventoryVO> deliverymanageList(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session, @RequestBody DataTablesInput input) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            InventoryVO parameterVO = new InventoryVO();
            parameterVO.setDataTablesInput(input);

            List<InventoryVO> resultList = warehouseService.selectProductReleaseList(parameterVO.getSearchMap());
            int total = warehouseService.selectProductReleaseListCount(parameterVO.getSearchMap());
			if(resultList != null) {
	            DataTablesOutput<InventoryVO> output = new DataTablesOutput<InventoryVO>();
	            output.setDraw(input.getDraw());
	            output.setRecordsTotal(total);
	            output.setRecordsFiltered(resultList.size());
	            output.setData(resultList);

	            return output;
			}
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
        return null;
    }


}
