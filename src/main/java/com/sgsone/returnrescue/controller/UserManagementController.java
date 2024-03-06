package com.sgsone.returnrescue.controller;

import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.service.CommonService;
import com.sgsone.returnrescue.service.DirectProductSaleManagementService;
import com.sgsone.returnrescue.service.NotificationService;
import com.sgsone.returnrescue.service.UserManagementService;
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
public class UserManagementController {

    @Autowired
    private ExceptionFactory exceptionFactory;

    @Autowired
    UserManagementService userManagementService;

    @Autowired
    DirectProductSaleManagementService directProductSaleManagementService;

    @Autowired
    CommonService commonService;

    @Autowired
    NotificationService notificationService;

    @RequestMapping(value = "/sellerManagement.do", method = {RequestMethod.POST, RequestMethod.GET})
    public String sellerManagement(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session, @ModelAttribute("parameterVO") UserManagementVO parameterVO, ModelMap modelVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            if (session.getAttribute("sessionVO") == null) {
                return "redirect:/logout.do";
            } else {
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }

        return "/userManagement/sellerManagement";
    }

    @RequestMapping(value = "/sellerManagement.json", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public DataTablesOutput<UserManagementVO> sellerManagement(HttpServletResponse response, HttpServletRequest request, HttpSession session, @RequestBody DataTablesInput input) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        UserManagementVO parameterVO = new UserManagementVO();
        DataTablesOutput<UserManagementVO> output = new DataTablesOutput<UserManagementVO>();


        try {
            parameterVO.setDataTablesInput(input);
            List<UserManagementVO> userManagementVOList = userManagementService.selectSellerList(parameterVO.getSearchMap());
            int total = userManagementService.selectSellerListTotal(parameterVO.getSearchMap());


//        DataTablesOutput<UserManagementVO> output = new DataTablesOutput<UserManagementVO>();
            output.setDraw(input.getDraw());
            output.setRecordsTotal(total);
            output.setRecordsFiltered(total);
            output.setData(userManagementVOList);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }


        return output;
    }

    @RequestMapping(value = "/approvalBusinessInfo.json", method = { RequestMethod.POST })
    @ResponseBody
    public ModelAndView approvalBusinessInfo(HttpSession session, HttpServletRequest request, @RequestBody UserManagementVO parameterVO) {
        ModelAndView modelAndView = new ModelAndView("jsonView");
        String whoAmi = Thread.currentThread().getStackTrace()[1].toString();

        try {

            int result = userManagementService.updateBusinessInfoFlag(parameterVO);

            if (result >= 0) {
                modelAndView.addObject("resultCode", "success");
                modelAndView.addObject("message", "사업자정보 승인성공");

                NotificationVO notificationVO = new NotificationVO();
                notificationVO.setTitle(NotificationMessage.Message.BUSINESSREGISTEDONE.getMessageTitle());
                notificationVO.setContent(NotificationMessage.getMessage(NotificationMessage.Message.BUSINESSREGISTEDONE).getMessageContent());
                notificationVO.setAccount_id_list(parameterVO.getAccount_id_list());
                notificationService.insertNotification(notificationVO);
            } else {
                modelAndView.addObject("resultCode", "fail");
                modelAndView.addObject("message", "사업자정보 승인실패");
            }

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            modelAndView.addObject("resultCode", "fail");
            modelAndView.addObject("message", "시스템 에러가 발생하였습니다.");
        }

        return modelAndView;
    }

    @RequestMapping(value = "/changeVipGrade.json", method = { RequestMethod.POST })
    @ResponseBody
    public ModelAndView changeVipGrade(HttpSession session, HttpServletRequest request, @RequestBody UserManagementVO parameterVO) {
        ModelAndView modelAndView = new ModelAndView("jsonView");
        String whoAmi = Thread.currentThread().getStackTrace()[1].toString();

        try {

            int result = userManagementService.updateVipGrade(parameterVO);

            if (result >= 0) {
                modelAndView.addObject("resultCode", "success");
                modelAndView.addObject("message", "등급변경 성공");
            } else {
                modelAndView.addObject("resultCode", "fail");
                modelAndView.addObject("message", "등급변경 실패");
            }

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            modelAndView.addObject("resultCode", "fail");
            modelAndView.addObject("message", "시스템 에러가 발생하였습니다.");
        }

        return modelAndView;
    }

    @RequestMapping(value = "/userManagement.do", method = {RequestMethod.POST, RequestMethod.GET})
    public String userManagement(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session, @ModelAttribute("parameterVO") UserManagementVO parameterVO, ModelMap modelVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            if (session.getAttribute("sessionVO") == null) {
                return "redirect:/logout.do";
            } else {
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }

        return "/userManagement/userManagement";
    }

    @RequestMapping(value = "/userManagement.json", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public DataTablesOutput<UserManagementVO> userManagement(HttpServletResponse response, HttpServletRequest request, HttpSession session, @RequestBody DataTablesInput input) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        UserManagementVO parameterVO = new UserManagementVO();

        parameterVO.setDataTablesInput(input);
        List<UserManagementVO> userManagementVOList = userManagementService.selectUserList(parameterVO.getSearchMap());
        int total = userManagementService.selectUserListTotal(parameterVO.getSearchMap());

        DataTablesOutput<UserManagementVO> output = new DataTablesOutput<UserManagementVO>();
        output.setDraw(input.getDraw());
        output.setRecordsTotal(total);
        output.setRecordsFiltered(total);
        output.setData(userManagementVOList);

        return output;
    }

    @RequestMapping(value = "/sellerManagementEdit.do", method = {RequestMethod.POST, RequestMethod.GET})
    public String sellerManagementEdit(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session, @ModelAttribute("parameterVO") UserManagementVO parameterVO, ModelMap modelVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            if (session.getAttribute("sessionVO") == null) {
                return "redirect:/logout.do";
            } else {
                UserManagementVO userManagementVO = userManagementService.selectUserDetail(parameterVO);
                modelVO.addAttribute("userManagementVO", userManagementVO);

                List<CategoryVO> categoryNameList = commonService.selectCategoryList(null);
//                List<DirectProductManagementVO> categoryNameList = directProductSaleManagementService.getCategoryNameList();
                modelVO.addAttribute("categoryName", categoryNameList);

                List<Integer> setBusinessImage = userManagementService.selectBusinessImage(parameterVO);
                model.addAttribute("setBusinessImage", setBusinessImage);

                List<Integer> setOnlineMarketingImage = userManagementService.selectOnlineMarketingImage(parameterVO);
                model.addAttribute("setOnlineMarketingImage", setOnlineMarketingImage);

                List<Integer> setStoreImage = userManagementService.selectStoreImage(parameterVO);
                model.addAttribute("setStoreImage", setStoreImage);
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }

        return "/userManagement/sellerManagementEdit";
    }

    @RequestMapping(value = "/sellerManagementEdit_consignment.json", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public DataTablesOutput<ConsignmentVO> sellerManagementEdit(HttpServletResponse response, HttpServletRequest request, HttpSession session, @RequestBody DataTablesInput input) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        UserManagementVO parameterVO = new UserManagementVO();

        parameterVO.setDataTablesInput(input);
        parameterVO.getSearchMap().put("aes_key", parameterVO.getAes_key());
        parameterVO.getSearchMap().put("account_id", input.getCustomSearch());
        List<ConsignmentVO> userManagementVOList = userManagementService.selectSellerDetailList_consignment(parameterVO.getSearchMap());
        int total = userManagementService.selectSellerDetailListTotal_consignment(parameterVO.getSearchMap());

        DataTablesOutput<ConsignmentVO> output = new DataTablesOutput<ConsignmentVO>();
        output.setDraw(input.getDraw());
        output.setRecordsTotal(total);
        output.setRecordsFiltered(total);
        output.setData(userManagementVOList);

        return output;
    }

    @RequestMapping(value = "/sellerManagementEdit_direct.json", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public DataTablesOutput<ConsignmentVO> sellerManagementEditDriect(HttpServletResponse response, HttpServletRequest request, HttpSession session, @RequestBody DataTablesInput input) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        UserManagementVO parameterVO = new UserManagementVO();

        parameterVO.setDataTablesInput(input);
        parameterVO.getSearchMap().put("aes_key", parameterVO.getAes_key());
        parameterVO.getSearchMap().put("account_id", input.getCustomSearch());
        List<ConsignmentVO> userManagementVOList = userManagementService.selectSellerDetailList_direct(parameterVO.getSearchMap());
        int total = userManagementService.selectSellerDetailListTotal_direct(parameterVO.getSearchMap());

        DataTablesOutput<ConsignmentVO> output = new DataTablesOutput<ConsignmentVO>();
        output.setDraw(input.getDraw());
        output.setRecordsTotal(total);
        output.setRecordsFiltered(total);
        output.setData(userManagementVOList);

        return output;
    }

    @RequestMapping(value = "/userManagementEdit.do", method = {RequestMethod.POST, RequestMethod.GET})
    public String userManagementEdit(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session, @ModelAttribute("parameterVO") UserManagementVO parameterVO, ModelMap modelVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
//        String account_no = request.getParameter("account_no");
//        parameterVO.setAccount_no(Integer.parseInt(account_no));

        try {
            if (session.getAttribute("sessionVO") == null) {
                return "redirect:/logout.do";
            } else {
                UserManagementVO userManagementVO = userManagementService.selectUserDetail(parameterVO);
                modelVO.addAttribute("userManagementVO", userManagementVO);
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }

        return "/userManagement/userManagementEdit";
    }
}
