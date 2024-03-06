package com.sgsone.returnrescue.controller;

import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.schedule.SchedulerService;
import com.sgsone.returnrescue.service.CommonService;
import com.sgsone.returnrescue.service.DirectProductSaleManagementService;
import com.sgsone.returnrescue.service.DisabledService;
import com.sgsone.returnrescue.service.HistoryService;
import com.sgsone.returnrescue.vo.*;
import com.sgsone.returnrescue.vo.datatable.DataTablesInput;
import com.sgsone.returnrescue.vo.datatable.DataTablesOutput;
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
public class DisabledController {

    @Autowired
    private ExceptionFactory exceptionFactory;

    @Autowired
    CommonService commonService;

    @Autowired
    DisabledService disabledService;

    @Autowired
    DirectProductSaleManagementService directProductSaleManagementService;

    @Autowired
    HistoryService historyService;

    @Autowired
    SchedulerService schedulerService;

    @RequestMapping(value = "/disabledManagement.do", method = {RequestMethod.POST, RequestMethod.GET})
    public String disabledManagement(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session, @ModelAttribute("parameterVO") OfferManagementVO parameterVO, ModelMap modelVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        try {
            if (session.getAttribute("sessionVO") == null) {
                return "redirect:/logout.do";
            } else {
                String state = request.getParameter("state");
                OfferManagementVO disabledCountVO = disabledService.selectDisabledCount();
                if(disabledCountVO == null){
                    disabledCountVO = new OfferManagementVO();
                }
                modelVO.addAttribute("disabledCountVO", disabledCountVO);

                List<DirectProductManagementVO> categoryNameList = directProductSaleManagementService.getCategoryNameList();
                modelVO.addAttribute("categoryName", categoryNameList);
                modelVO.addAttribute("state", state);

            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }

        return "/disabledManagement/disabledManagement";
    }

    @RequestMapping(value = "/disabledManagement.json", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public DataTablesOutput<DisabledVO> disabledManagement(HttpServletResponse response, HttpServletRequest request, HttpSession session, @RequestBody DataTablesInput input) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        DisabledVO parameterVO = new DisabledVO();

        parameterVO.setDataTablesInput(input);
        List<DisabledVO> DirectProductManagementList = disabledService.selectDisabledList(parameterVO.getSearchMap());
        int total = disabledService.selectDisabledListTotal(parameterVO.getSearchMap());

        DataTablesOutput<DisabledVO> output = new DataTablesOutput<DisabledVO>();
        output.setDraw(input.getDraw());
        output.setRecordsTotal(total);
        output.setRecordsFiltered(total);
        output.setData(DirectProductManagementList);

        return output;
    }

    @RequestMapping(value = "/disabledManagementDetail.do", method = {RequestMethod.POST, RequestMethod.GET})
    public String disabledManagementDetail(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        String product_id = request.getParameter("product_id");

        OfferManagementVO offerManagementVO = disabledService.selectDisabledDetail(product_id);

        List<HistoryVO> historyVOList = historyService.selectHistoryProduct(product_id);
        model.addAttribute("historyVOList", historyVOList);

        model.addAttribute("disabledVO", offerManagementVO);


        try {
            if (session.getAttribute("sessionVO") == null) {
                return "redirect:/logout.do";
            } else {
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }

        return "/disabledManagement/disabledManagementDetail";
    }

    @RequestMapping(value = "/discardReturnBasic.do", method = {RequestMethod.POST, RequestMethod.GET})
    public String discardReturnBasic(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        try {
            if (session.getAttribute("sessionVO") == null) {
                return "redirect:/logout.do";
            } else {
                String product_id = request.getParameter("product_id");
                ProductListVO productListVO = new ProductListVO();
                productListVO.setProduct_id(product_id);

                ProductListVO selectProductDetail = disabledService.selectProductDetail(productListVO);
                model.addAttribute("productListVO", selectProductDetail);

            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }

        return "/disabledManagement/discardReturnBasic";
    }

    @RequestMapping(value = "/DiscardReturnBasic.json", method = {RequestMethod.POST, RequestMethod.GET})
    public ModelAndView insertDiscardBasic(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session, Model modelVO, @ModelAttribute("parameterVO") OfferManagementVO parameterVO) {

        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        ModelAndView modelAndView = new ModelAndView("jsonView");

        try {
            int result = disabledService.insertDiscardBasic(parameterVO);
            int history_result = disabledService.insertHistory_product(parameterVO);

            if(result >= 0) {
                if (history_result >=0) {
                    modelAndView.addObject("resultCode", "success");
                }
            } else {
                modelAndView.addObject("resultCode", "fail");
                modelAndView.addObject("message", "DB 에러가 발생하였습니다.");
                return modelAndView;
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return modelAndView;
    }

    @RequestMapping(value = "/recoveryReturnBasic.do", method = {RequestMethod.POST, RequestMethod.GET})
    public String recoveryReturnBasic(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        try {
            if (session.getAttribute("sessionVO") == null) {
                return "redirect:/logout.do";
            } else {
                String product_id = request.getParameter("product_id");
                ProductListVO productListVO = new ProductListVO();
                productListVO.setProduct_id(product_id);

                ProductListVO selectProductDetail = disabledService.selectProductDetail(productListVO);
                model.addAttribute("productListVO", selectProductDetail);
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }

        return "/disabledManagement/recoveryReturnBasic";
    }

    @RequestMapping(value = "/RecoveryReturnBasic.json", method = {RequestMethod.POST, RequestMethod.GET})
    public ModelAndView RecoveryReturnBasic(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session, Model modelVO, @ModelAttribute("parameterVO") OfferManagementVO parameterVO) {

        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        ModelAndView modelAndView = new ModelAndView("jsonView");

        try {
            int result = disabledService.insertRecoveryBasic(parameterVO);
            int history_result = disabledService.insertHistory_product(parameterVO);

            if(result >= 0) {
                if (history_result >=0) {
                    modelAndView.addObject("resultCode", "success");
                }
            } else {
                modelAndView.addObject("resultCode", "fail");
                modelAndView.addObject("message", "DB 에러가 발생하였습니다.");
                return modelAndView;
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return modelAndView;
    }

    @RequestMapping(value = "/donateReturnBasic.do", method = {RequestMethod.POST, RequestMethod.GET})
    public String donateReturnBasic(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        try {
            if (session.getAttribute("sessionVO") == null) {
                return "redirect:/logout.do";
            } else {
                String state = request.getParameter("state");
                OfferManagementVO disabledCountVO = disabledService.selectDisabledCount();
                if(disabledCountVO == null){
                    disabledCountVO = new OfferManagementVO();
                }

            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }

        return "/disabledManagement/donateReturnBasic";
    }
}
