package com.sgsone.returnrescue.controller;

import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.service.CommonService;
import com.sgsone.returnrescue.service.ManagerService;
import com.sgsone.returnrescue.service.NoticeManagementService;
import com.sgsone.returnrescue.service.ServiceRuleService;
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
@RequestMapping("/operation")
public class OperationManagementController {

    @Autowired
    private ExceptionFactory exceptionFactory;

    @Autowired
    NoticeManagementService noticeManagementService;

    @Autowired
    CommonService commonService;

    @Autowired
    ManagerService managerService;

    @Autowired
    ServiceRuleService serviceRuleService;

    @RequestMapping(value = "/noticeManagement.do", method = {RequestMethod.POST, RequestMethod.GET})
    public String noticeManagement(Locale locale, HttpServletResponse response, HttpServletRequest request, HttpSession session, @ModelAttribute("noticeManagementVO") NoticeManagementVO params, Model modelVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        try {
            if (session.getAttribute("sessionVO") == null) {
                return "redirect:/logout.do";
            } else {
                AdminVO sessionValue = (AdminVO)session.getAttribute("sessionVO");
                modelVO.addAttribute("account_id", sessionValue.getAccount_id());
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }

        return "operationManagement/noticeManagement";
    }

    @RequestMapping(value = "/noticeManagement.json", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public DataTablesOutput noticeManagement(Locale locale, HttpServletResponse response, HttpServletRequest request, HttpSession session, @RequestBody DataTablesInput input) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        DataTablesOutput<NoticeManagementVO> output = new DataTablesOutput<NoticeManagementVO>();

        NoticeManagementVO parameterVO = new NoticeManagementVO();
        parameterVO.setDataTablesInput(input);

        try {

            List<NoticeManagementVO> noticeManagementVOList = noticeManagementService.selectNoticeList(parameterVO.getSearchMap());
            int total = noticeManagementService.selectNoticeListTotal(parameterVO.getSearchMap());

            output.setDraw(input.getDraw());
            output.setRecordsTotal(total);
            output.setRecordsFiltered(total);
            output.setData(noticeManagementVOList);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }

        return output;
    }

    @RequestMapping(value = "/deleteNotice.json", method = { RequestMethod.POST ,RequestMethod.GET})
    @ResponseBody
    public ModelAndView deleteNotice(HttpSession session, HttpServletRequest request, @RequestBody NoticeManagementVO parameterVO ){
        ModelAndView modelAndView = new ModelAndView("jsonView");
        String whoAmi = Thread.currentThread().getStackTrace()[1].toString();

        try {

            int result = noticeManagementService.deleteNotice(parameterVO);

            if (result >= 0) {
                modelAndView.addObject("resultCode", "success");
                modelAndView.addObject("message", "공지사항 삭제성공");
            } else {
                modelAndView.addObject("resultCode", "fail");
                modelAndView.addObject("message", "공지사항 삭제실패");
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            modelAndView.addObject("resultCode", "fail");
            modelAndView.addObject("message", "시스템 에러가 발생하였습니다.");
        }

        return modelAndView;
    }

    @RequestMapping(value = "/noticeDetail.do", method = {RequestMethod.POST, RequestMethod.GET})
    public String noticeDetail(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, @ModelAttribute("NoticeManagementVO") NoticeManagementVO params, HttpSession session, Model modelVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            if (session.getAttribute("sessionVO") == null) {
                return "redirect:/logout.do";
            } else {    String notice_no = request.getParameter("notice_no");
                AdminVO sessionValue = (AdminVO)session.getAttribute("sessionVO");
                modelVO.addAttribute("account_id", sessionValue.getAccount_id());

                NoticeManagementVO noticeVO = noticeManagementService.selectNoticeDetail(notice_no);
                modelVO.addAttribute("noticeVO", noticeVO);

                List<FileVO> noticeFileList = commonService.selectNoticeFileList(notice_no);
                modelVO.addAttribute("noticeFileList", noticeFileList);
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }

        return "operationManagement/noticeDetail";
    }

    @RequestMapping(value = "/noticeRegister.do", method = {RequestMethod.POST, RequestMethod.GET})
    public String noticeRegister(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, @ModelAttribute("NoticeManagementVO") NoticeManagementVO params, HttpSession session, Model modelVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            if (session.getAttribute("sessionVO") == null) {
                return "redirect:/logout.do";
            } else {    String notice_no = request.getParameter("notice_no");
                AdminVO sessionValue = (AdminVO)session.getAttribute("sessionVO");
                modelVO.addAttribute("account_id", sessionValue.getAccount_id());

                NoticeManagementVO noticeVO = noticeManagementService.selectNoticeDetail(notice_no);
                modelVO.addAttribute("noticeVO", noticeVO);

                List<FileVO> noticeFileList = commonService.selectNoticeFileList(notice_no);
                modelVO.addAttribute("noticeFileList", noticeFileList);
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }

        return "operationManagement/noticeRegister";
    }

    @RequestMapping(value = "/insertNotice.json", method = { RequestMethod.POST ,RequestMethod.GET})
    @ResponseBody
    public ModelAndView insertNotice(HttpSession session, HttpServletRequest request, @RequestBody NoticeManagementVO parameterVO ){
        ModelAndView modelAndView = new ModelAndView("jsonView");
        String whoAmi = Thread.currentThread().getStackTrace()[1].toString();

        try {

            int insert_result = noticeManagementService.insertNotice(parameterVO);

            if (insert_result >= 0) {
                modelAndView.addObject("resultCode", "success");
                modelAndView.addObject("message", "공지사항 등록성공");
            } else {
                modelAndView.addObject("resultCode", "fail");
                modelAndView.addObject("message", "공지사항 등록실패");
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            modelAndView.addObject("resultCode", "fail");
            modelAndView.addObject("message", "시스템 에러가 발생하였습니다.");
        }

        return modelAndView;
    }

    @RequestMapping(value = "/managerManagement.do", method = {RequestMethod.POST, RequestMethod.GET})
    public String managerManagement(Locale locale, HttpServletResponse response, HttpServletRequest request, HttpSession session, @ModelAttribute("noticeManagementVO") NoticeManagementVO params, Model modelVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        try {
            if (session.getAttribute("sessionVO") == null) {
                return "redirect:/logout.do";
            } else {
                AdminVO sessionValue = (AdminVO)session.getAttribute("sessionVO");
                modelVO.addAttribute("account_id", sessionValue.getAccount_id());
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }

        return "operationManagement/managerManagement";
    }

    @RequestMapping(value = "/managerList.json", method = { RequestMethod.POST ,RequestMethod.GET})
    @ResponseBody
    public DataTablesOutput managerList(HttpSession session, HttpServletRequest request, @RequestBody DataTablesInput input){
        String whoAmi = Thread.currentThread().getStackTrace()[1].toString();
        DataTablesOutput<ManagerVO> output = new DataTablesOutput<ManagerVO>();
        AdminVO sessionValue = (AdminVO)session.getAttribute("sessionVO");
        ManagerVO managerVO = new ManagerVO();

        managerVO.setDataTablesInput(input);

        List<ManagerVO> managerList = managerService.selectManagerList(managerVO.getSearchMap());
        int total = managerService.selectListTotal(managerVO.getSearchMap());

        output.setDraw(input.getDraw());
        output.setRecordsTotal(total);
        output.setRecordsFiltered(total);
        output.setData(managerList);

        return output;
    }

    @RequestMapping(value = "/managerDetail.do", method = {RequestMethod.POST, RequestMethod.GET})
    public String managerDetail(Locale locale, HttpServletResponse response, HttpServletRequest request, HttpSession session, Model modelVO, @ModelAttribute("account_id") String param) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        ManagerVO managerVO = new ManagerVO();

        try {
            if (session.getAttribute("sessionVO") == null) {
                return "redirect:/logout.do";
            } else {
                AdminVO sessionValue = (AdminVO)session.getAttribute("sessionVO");
                modelVO.addAttribute("account_id", sessionValue.getAccount_id());
                String uri = request.getRequestURI();

                if (param != null) {
                    managerVO.getSearchMap().put("account_id", param);
                    managerVO = managerService.selectManagerDetail(managerVO.getSearchMap());
                    modelVO.addAttribute("managerVO", managerVO);

                }

            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }

        return "operationManagement/managerDetail";
    }


    @RequestMapping(value = "/managerRegister.json", method = { RequestMethod.POST ,RequestMethod.GET})
    @ResponseBody
    public ModelAndView managerRegister(HttpSession session, HttpServletRequest request, @RequestBody ManagerVO parameterVO ){
        ModelAndView modelAndView = new ModelAndView("jsonView");
        String whoAmi = Thread.currentThread().getStackTrace()[1].toString();

        try {
            int insert_result1 = managerService.insertAccount(parameterVO);
            int insert_result2 = -1;

            if (insert_result1 >= 0) {
                insert_result2 = managerService.insertManagerAuth(parameterVO);
            }
            if (insert_result2 >= 0) {
                modelAndView.addObject("resultCode", "success");
                modelAndView.addObject("message", "관리자 등록성공");
            } else {
                modelAndView.addObject("resultCode", "fail");
                modelAndView.addObject("message", "관리자 등록실패");
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            modelAndView.addObject("resultCode", "fail");
            modelAndView.addObject("message", "시스템 에러가 발생하였습니다.");
        }

        return modelAndView;
    }
    @RequestMapping(value = "/updateManagerAuth.json", method = { RequestMethod.POST ,RequestMethod.GET})
    @ResponseBody
    public ModelAndView updateManagerAuth(HttpSession session, HttpServletRequest request, @RequestBody ManagerVO parameterVO ){
        ModelAndView modelAndView = new ModelAndView("jsonView");
        String whoAmi = Thread.currentThread().getStackTrace()[1].toString();

        try {
            int result = -1;

            result = managerService.updateManagerAuth(parameterVO);

            if (result >= 0) {
                modelAndView.addObject("resultCode", "success");
                modelAndView.addObject("message", "관리자 접근 설정 성공");
            } else {
                modelAndView.addObject("resultCode", "fail");
                modelAndView.addObject("message", "관리자 접근 설정 실패");
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            modelAndView.addObject("resultCode", "fail");
            modelAndView.addObject("message", "시스템 에러가 발생하였습니다.");
        }

        return modelAndView;
    }

    @RequestMapping(value = "/managerRegister.do", method = {RequestMethod.POST, RequestMethod.GET})
    public String managerRegister(Locale locale, HttpServletResponse response, HttpServletRequest request, HttpSession session, Model modelVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        ManagerVO managerVO = new ManagerVO();

        try {
            if (session.getAttribute("sessionVO") == null) {
                return "redirect:/logout.do";
            } else {
                AdminVO sessionValue = (AdminVO)session.getAttribute("sessionVO");
                modelVO.addAttribute("account_id", sessionValue.getAccount_id());
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }

        return "operationManagement/managerRegister";
    }

    @RequestMapping(value = "/managerUpdateAccount.do", method = {RequestMethod.POST, RequestMethod.GET})
    public String managerUpdateAccount(Locale locale, HttpServletResponse response, HttpServletRequest request, HttpSession session, Model modelVO, @ModelAttribute("account_id") String param) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        ManagerVO managerVO = new ManagerVO();

        try {
            if (session.getAttribute("sessionVO") == null) {
                return "redirect:/logout.do";
            } else {
                AdminVO sessionValue = (AdminVO)session.getAttribute("sessionVO");
                modelVO.addAttribute("account_id", sessionValue.getAccount_id());
                String uri = request.getRequestURI();

                if (param != null) {
                    managerVO.getSearchMap().put("account_id", param);
                    managerVO = managerService.selectManagerDetail(managerVO.getSearchMap());
                    modelVO.addAttribute("managerVO", managerVO);

                }

            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }

        return "operationManagement/managerUpdateAccount";
    }

    @RequestMapping(value = "/updateManagerAccount.json", method = { RequestMethod.POST ,RequestMethod.GET})
    @ResponseBody
    public ModelAndView updateManagerAccount(HttpSession session, HttpServletRequest request, @RequestBody ManagerVO parameterVO ){
        ModelAndView modelAndView = new ModelAndView("jsonView");
        String whoAmi = Thread.currentThread().getStackTrace()[1].toString();

        try {
            int result = -1;
            int result2 = -1;
            result = managerService.updateManagerAccount(parameterVO);
            if (result >= 0) {
                result2 = managerService.updateManagerAuth(parameterVO);
            }

            if (result2 >= 0) {
                modelAndView.addObject("resultCode", "success");
                modelAndView.addObject("message", "매니저 설정 성공");
            } else {
                modelAndView.addObject("resultCode", "fail");
                modelAndView.addObject("message", "매니저 설정 실패");
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            modelAndView.addObject("resultCode", "fail");
            modelAndView.addObject("message", "시스템 에러가 발생하였습니다.");
        }

        return modelAndView;
    }

    @RequestMapping(value = "/deleteManager.json", method = { RequestMethod.POST ,RequestMethod.GET})
    @ResponseBody
    public ModelAndView deleteManager(HttpSession session, HttpServletRequest request, @RequestBody ManagerVO parameterVO ){
        ModelAndView modelAndView = new ModelAndView("jsonView");
        String whoAmi = Thread.currentThread().getStackTrace()[1].toString();

        try {
            managerService.deleteManagerAuth(parameterVO);

            int result1 = managerService.updateManagerDelete(parameterVO);

            if (result1 >= 0) {
                modelAndView.addObject("resultCode", "success");
                modelAndView.addObject("message", "매니저 삭제 성공");
            } else {
                modelAndView.addObject("resultCode", "fail");
                modelAndView.addObject("message", "매니저 삭제 실패");
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            modelAndView.addObject("resultCode", "fail");
            modelAndView.addObject("message", "시스템 에러가 발생하였습니다.");
        }

        return modelAndView;
    }

    @RequestMapping(value = "/serviceRuleManagement.do", method = {RequestMethod.POST, RequestMethod.GET})
    public String serviceRuleManagement(Locale locale, HttpServletResponse response, HttpServletRequest request, HttpSession session, Model modelVO, @ModelAttribute("account_id") String param) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        ManagerVO managerVO = new ManagerVO();

        try {


        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }

        return "operationManagement/serviceRuleManagement";
    }

    @RequestMapping(value = "/serviceRuleList.json", method = { RequestMethod.POST ,RequestMethod.GET})
    @ResponseBody
    public DataTablesOutput serviceRuleList(HttpSession session, HttpServletRequest request, @RequestBody DataTablesInput input){
        String whoAmi = Thread.currentThread().getStackTrace()[1].toString();
        DataTablesOutput<ServiceRuleVO> output = new DataTablesOutput<ServiceRuleVO>();
        AdminVO sessionValue = (AdminVO)session.getAttribute("sessionVO");
        ManagerVO managerVO = new ManagerVO();
        managerVO.setDataTablesInput(input);

        try {
            List<ServiceRuleVO> serviceRuleVOList = serviceRuleService.selectServiceRuleList(managerVO.getSearchMap());
//        int total = managerService.(managerVO.getSearchMap());

            output.setDraw(input.getDraw());
//        output.setRecordsTotal(total);
//        output.setRecordsFiltered(total);
            output.setData(serviceRuleVOList);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }

        return output;
    }
    @RequestMapping(value = "/serviceRuleRegist.do", method = {RequestMethod.POST, RequestMethod.GET})
    public String serviceRuleRegist(Locale locale, HttpServletResponse response, HttpServletRequest request, HttpSession session, Model modelVO, @ModelAttribute("account_id") String param) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        ManagerVO managerVO = new ManagerVO();

        try {


        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }

        return "operationManagement/serviceRuleRegist";
    }

}
