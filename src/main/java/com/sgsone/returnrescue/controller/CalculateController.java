package com.sgsone.returnrescue.controller;

import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.service.CalculateService;
import com.sgsone.returnrescue.vo.AdminVO;
import com.sgsone.returnrescue.vo.CalculateChartVO;
import com.sgsone.returnrescue.vo.CalculateVO;
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
public class CalculateController {

    @Autowired
    private ExceptionFactory exceptionFactory;

    @Autowired
    CalculateService calculateService;

    @RequestMapping(value = "/returnCalculate.do", method = {RequestMethod.POST, RequestMethod.GET})
    public String calculate(Locale locale, ModelMap modelVO, HttpServletResponse response, HttpServletRequest request, HttpSession session, @ModelAttribute("parameterVO") CalculateVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        CalculateVO calculateVO = calculateService.selectCalculatePrice();
        modelVO.addAttribute("calculateVO", calculateVO);

        return "calculate/returnCalculate";
    }

    @RequestMapping(value = "/selectCalculateChart.json", method = { RequestMethod.GET ,RequestMethod.POST })
    @ResponseBody
    public ModelAndView selectCalculateChart(@RequestBody CalculateVO parameterVO) {
        ModelAndView modelAndView = new ModelAndView("jsonView");
        String whoAmi = Thread.currentThread().getStackTrace()[1].toString();

        try {
            List<CalculateChartVO> calChart = calculateService.selectCalculateChartInfo(parameterVO);
            modelAndView.addObject("calChart", calChart);

            if (calChart != null && !calChart.equals("")) {
                modelAndView.addObject("calChart", calChart);
                modelAndView.addObject("resultCode", "success");
                modelAndView.addObject("message", "정산차트 데이터 조회성공");
            }

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            modelAndView.addObject("resultCode", "fail");
            modelAndView.addObject("message", "시스템 에러가 발생하였습니다.");
        }

        return modelAndView;
    }

    @RequestMapping(value = "/selectReturnCalculateChart.json", method = { RequestMethod.GET ,RequestMethod.POST })
    @ResponseBody
    public ModelAndView selectReturnCalculateChart(@RequestBody CalculateVO parameterVO) {
        ModelAndView modelAndView = new ModelAndView("jsonView");
        String whoAmi = Thread.currentThread().getStackTrace()[1].toString();

        try {
            List<CalculateChartVO> calChart = calculateService.selectReturnCalculateChartInfo(parameterVO);
            modelAndView.addObject("calChart", calChart);

            if (calChart != null && !calChart.equals("")) {
                modelAndView.addObject("calChart", calChart);
                modelAndView.addObject("resultCode", "success");
                modelAndView.addObject("message", "정산차트 데이터 조회성공");
            }

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            modelAndView.addObject("resultCode", "fail");
            modelAndView.addObject("message", "시스템 에러가 발생하였습니다.");
        }

        return modelAndView;
    }

    @RequestMapping(value = "/calculate.json", method = {RequestMethod.POST})
    @ResponseBody
    public DataTablesOutput<CalculateVO> calculateList(Locale locale, HttpServletRequest request, HttpSession session, @RequestBody DataTablesInput input, ModelMap modelVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        DataTablesOutput<CalculateVO> output = new DataTablesOutput<CalculateVO>();

        try {

            CalculateVO parameterVO = new CalculateVO();
            parameterVO.setDataTablesInput(input);
            List<CalculateVO> calculateList = calculateService.selectCalculateList(parameterVO.getSearchMap());
            int total = calculateService.selectCalculateListTotal(parameterVO.getSearchMap());
            output.setDraw(input.getDraw());
            output.setRecordsTotal(total);
            output.setRecordsFiltered(total);
            output.setData(calculateList);

        }
        catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return output;
    }

    @RequestMapping(value = "/calculateDetail.do", method = {RequestMethod.POST, RequestMethod.GET})
    public String calculateDetail(Locale locale, ModelMap modelVO, HttpServletResponse response, HttpServletRequest request, HttpSession session, @ModelAttribute("parameterVO") CalculateVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        String cal_no = request.getParameter("cal_month_no");


        AdminVO sessionValue = (AdminVO)session.getAttribute("sessionVO");

        CalculateVO calculateVO = calculateService.selectCalculateDetailInfo(cal_no);
        modelVO.addAttribute("calculateVO", calculateVO);

        modelVO.addAttribute("account_id", sessionValue.getAccount_id());
        modelVO.addAttribute("cal_month_no", parameterVO.getCal_month_no());


        return "calculate/calculateDetail";
    }

    @RequestMapping(value = "/calculateDetail.json", method = {RequestMethod.POST})
    @ResponseBody
    public DataTablesOutput<CalculateVO> calculateDetail(Locale locale, HttpServletRequest request, HttpSession session, @RequestBody DataTablesInput input, ModelMap modelVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        DataTablesOutput<CalculateVO> output = new DataTablesOutput<CalculateVO>();

        try {
            String no = String.valueOf(input.customSearch);
            CalculateVO parameterVO = new CalculateVO();
            parameterVO.setDataTablesInput(input);
            parameterVO.setCal_month_no(no);
            parameterVO.getSearchMap().put("cal_month_no", no);

            List<CalculateVO> calculateList = calculateService.selectCalculateDetail(parameterVO.getSearchMap());
            int total = calculateService.selectCalculateDetailTotal(parameterVO.getSearchMap());

            output.setDraw(input.getDraw());
            output.setRecordsTotal(total);
            output.setRecordsFiltered(total);
            output.setData(calculateList);

        }
        catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return output;
    }

    @RequestMapping(value = "/calculateModal.json", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public ModelAndView calculateModal(Locale locale, HttpServletRequest request, HttpSession session, @RequestBody CalculateVO parameterVO, ModelMap modelVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        ModelAndView modelAndView = new ModelAndView("jsonView");
        CalculateVO modalCalculateVO = new CalculateVO();

        try {

            modalCalculateVO = calculateService.selectCalculateModal(parameterVO);
            modelAndView.addObject("data", modalCalculateVO);

            modelAndView.addObject("resultCode", "success");
            modelAndView.addObject("message", "성공");
        }
        catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            modelAndView.addObject("resultCode", "success");
            modelAndView.addObject("message", "실패");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/consignCalculate.do", method = {RequestMethod.POST, RequestMethod.GET})
    public String calculateInfo(Locale locale, ModelMap modelVO, HttpServletResponse response, HttpServletRequest request, HttpSession session, @ModelAttribute("parameterVO") CalculateVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        if (session.getAttribute("sessionVO") == null) {
            return "redirect:/logout.do";
        } else {
            try {
                // CalculateVO calculateVO = calculateService.selectCalculatePrice();
                CalculateVO calculateVO = calculateService.selectCalculateTotalInfo();

                modelVO.addAttribute("calculateVO", calculateVO);
            } catch (Exception e) {
                exceptionFactory.commonException(e, whoAmi);
            }
        }
        return "calculate/consignCalculate";
    }

    @RequestMapping(value = "/consignCalculateList.json", method = {RequestMethod.POST})
    @ResponseBody
    public DataTablesOutput<CalculateVO> consignCalculateList(Locale locale, HttpServletRequest request, HttpSession session, @RequestBody DataTablesInput input, ModelMap modelVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        DataTablesOutput<CalculateVO> output = new DataTablesOutput<CalculateVO>();

        try {
            AdminVO sessionValue  = (AdminVO)session.getAttribute("sessionVO");

            CalculateVO parameterVO = new CalculateVO();
            parameterVO.setDataTablesInput(input);
            parameterVO.getSearchMap().put("account_id", sessionValue.getAccount_id());

            List<CalculateVO> calculateList = calculateService.selectConsignCalculateList(parameterVO.getSearchMap());
            int total = calculateService.selectConsignCalculateListTotal(parameterVO.getSearchMap());
            output.setDraw(input.getDraw());
            output.setData(calculateList);
            output.setRecordsFiltered(total);
            output.setRecordsTotal(total);
        }
        catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return output;
    }

    @RequestMapping(value = "/updateCalState.json", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public ModelAndView updateCalState(Locale locale, HttpServletRequest request, HttpSession session, @RequestBody CalculateVO parameterVO, ModelMap modelVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        ModelAndView modelAndView = new ModelAndView("jsonView");
        CalculateVO modalCalculateVO = new CalculateVO();

        try {
            if (parameterVO.getCal_id_list() == null || parameterVO.getCal_id_list().equals("")) {
                modelAndView.addObject("resultCode", "fail");
                modelAndView.addObject("message", "선택된 항목이 없습니다.");
            }
            AdminVO sessionValue  = (AdminVO)session.getAttribute("sessionVO");
            parameterVO.setAccount_id(sessionValue.getAccount_id());
            int resultUpdate = 0;
            int resultInsert = 0;
            resultUpdate = calculateService.updateCalState(parameterVO);
            resultInsert = calculateService.insertCalculateDecide(parameterVO);
            for (int i = 0; i < parameterVO.getCal_id_list().size(); i++) {
                parameterVO.setCal_id(parameterVO.getCal_id_list().get(i));

            }

            if (resultUpdate != 0 && resultUpdate == resultInsert) {
                modelAndView.addObject("data", modalCalculateVO);
                modelAndView.addObject("resultCode", "success");
                modelAndView.addObject("message", "정산확정 성공");
            } else {
                modelAndView.addObject("resultCode", "fail");
                modelAndView.addObject("message", "정산확정 실패");
            }

        }
        catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            modelAndView.addObject("resultCode", "fail");
            modelAndView.addObject("message", "DB오류. 다시 시도해주세요");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/selectCalculateModalList.json", method = {RequestMethod.POST})
    @ResponseBody
    public DataTablesOutput<CalculateVO> selectCalculateModalList(Locale locale, HttpSession session, @RequestBody DataTablesInput input, ModelMap modelVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        DataTablesOutput<CalculateVO> output = new DataTablesOutput<CalculateVO>();
        String str = String.valueOf(input.customSearch);

        try {
            AdminVO sessionValue  = (AdminVO)session.getAttribute("sessionVO");

            CalculateVO parameterVO = new CalculateVO();
            parameterVO.setDataTablesInput(input);

            String [] arr= str.split(",");

            parameterVO.getSearchMap().put("account_id", arr[1]);
            parameterVO.getSearchMap().put("date", arr[0]);

            parameterVO.setDate(input.customSearch.toString());

            parameterVO.setDate(input.getDate());
            parameterVO.setDate(str);

            List<CalculateVO> calculateList = calculateService.selectCalculateModalList(parameterVO.getSearchMap());
            modelVO.addAttribute("calculateList", calculateList);

            output.setDraw(input.getDraw());
            output.setData(calculateList);

        }
        catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return output;
    }

    @RequestMapping(value = "/calculateModalDetail.json", method = {RequestMethod.POST})
    @ResponseBody
    public ModelAndView calculateModalDetail(Locale locale, HttpSession session, @RequestBody CalculateVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        CalculateVO modalCalculateVO = new CalculateVO();
        ModelAndView modelAndView = new ModelAndView("jsonView");

        try {
            AdminVO sessionValue  = (AdminVO)session.getAttribute("sessionVO");
            CalculateVO modalDetail = new CalculateVO();

            modalDetail.getSearchMap().put("cal_no", parameterVO.getCal_dt());


            modalDetail = calculateService.selectCalculateModalDetail(modalDetail.getSearchMap());

            modelAndView.addObject("resultCode", "success");
            modelAndView.addObject("message", "성공");
            modelAndView.addObject("data", modalDetail);

        }
        catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            modelAndView.addObject("resultCode", "success");
            modelAndView.addObject("message", "실패");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/returnCalDetail.do", method = {RequestMethod.POST, RequestMethod.GET})
    public String returnCalDetail(Locale locale, ModelMap modelVO, HttpServletResponse response, HttpServletRequest request, HttpSession session, @ModelAttribute("parameterVO") CalculateVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        if (session.getAttribute("sessionVO") == null) {
            return "redirect:/logout.do";
        } else {
            try {
                modelVO.addAttribute("cal_month_no", parameterVO.getCal_month_no());
//                CalculateVO calculateVO = calculateService.selectCalculatePrice();
            } catch (Exception e) {
                exceptionFactory.commonException(e, whoAmi);
            }
        }
        return "calculate/returnCalDetail";
    }

    @RequestMapping(value = "/returnCalDetail.json", method = {RequestMethod.POST})
    @ResponseBody
    public DataTablesOutput<CalculateVO> returnCalDetail(Locale locale, HttpServletRequest request, HttpSession session, @RequestBody DataTablesInput input, ModelMap modelVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        DataTablesOutput<CalculateVO> output = new DataTablesOutput<CalculateVO>();

        try {
            String no = String.valueOf(input.customSearch);
            CalculateVO parameterVO = new CalculateVO();
            parameterVO.setDataTablesInput(input);
            parameterVO.setCal_month_no(no);
            parameterVO.getSearchMap().put("cal_month_no", no);

            List<CalculateVO> calculateList = calculateService.selectReturnCalDetail(parameterVO.getSearchMap());
            int total = calculateService.selectCalculateDetailListTotal(parameterVO.getSearchMap());

            output.setDraw(input.getDraw());
            output.setRecordsTotal(total);
            output.setRecordsFiltered(total);
            output.setData(calculateList);

        }
        catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return output;
    }

    @RequestMapping(value = "/selectCalculateModalListKeep.json", method = {RequestMethod.POST})
    @ResponseBody
    public DataTablesOutput<CalculateVO> selectCalculateModalListKeep(Locale locale, HttpSession session, @RequestBody DataTablesInput input, ModelMap modelVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        DataTablesOutput<CalculateVO> output = new DataTablesOutput<CalculateVO>();
        String str = String.valueOf(input.customSearch);

        try {
            AdminVO sessionValue  = (AdminVO)session.getAttribute("sessionVO");

            CalculateVO parameterVO = new CalculateVO();
            parameterVO.setDataTablesInput(input);

            String [] arr= str.split(",");

            parameterVO.getSearchMap().put("account_id", arr[1]);
            parameterVO.getSearchMap().put("date", arr[0]);

            parameterVO.setDate(input.customSearch.toString());

            parameterVO.setDate(input.getDate());
            parameterVO.setDate(str);

            List<CalculateVO> calculateList = calculateService.selectCalculateModalListKeep(parameterVO.getSearchMap());
            modelVO.addAttribute("calculateList", calculateList);

            output.setDraw(input.getDraw());
            output.setData(calculateList);

        }
        catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return output;
    }

    @RequestMapping(value = "/calculateModalDetailKeep.json", method = {RequestMethod.POST})
    @ResponseBody
    public ModelAndView calculateModalDetailKepp(Locale locale, HttpSession session, @RequestBody CalculateVO date) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        CalculateVO modalCalculateVO = new CalculateVO();
        ModelAndView modelAndView = new ModelAndView("jsonView");

        try {
            AdminVO sessionValue  = (AdminVO)session.getAttribute("sessionVO");
            CalculateVO modalDetail = new CalculateVO();

            String [] arr = date.getDate().split(",");

            modalDetail.getSearchMap().put("account_id", arr[1]); // 아이디
            modalDetail.getSearchMap().put("date", arr[0]);


            modalDetail = calculateService.selectCalculateModalDetailKeep(modalDetail.getSearchMap());

            modelAndView.addObject("resultCode", "success");
            modelAndView.addObject("message", "성공");
            modelAndView.addObject("data", modalDetail);

        }
        catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            modelAndView.addObject("resultCode", "success");
            modelAndView.addObject("message", "실패");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/selectCalculateModalTableDetail.json", method = {RequestMethod.POST})
    @ResponseBody
    public DataTablesOutput<CalculateVO> selectCalculateModalTableDetail(Locale locale, HttpSession session, @RequestBody DataTablesInput input, ModelMap modelVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        DataTablesOutput<CalculateVO> output = new DataTablesOutput<CalculateVO>();
        String str = String.valueOf(input.customSearch);

        try {
            AdminVO sessionValue  = (AdminVO)session.getAttribute("sessionVO");

            CalculateVO parameterVO = new CalculateVO();
            parameterVO.setDataTablesInput(input);

            String [] arr= str.split(",");
            parameterVO.getSearchMap().put("cal_no", arr[0]);
            // parameterVO.getSearchMap().put("account_id", arr[1]);

            List<CalculateVO> calculateList = calculateService.selectCalculateModalTableDetail(parameterVO.getSearchMap());
            int total = calculateService.selectCalculateModalTableDetailTotal(parameterVO.getSearchMap());
            modelVO.addAttribute("calculateList", calculateList);

            output.setDraw(input.getDraw());
            output.setData(calculateList);
            output.setRecordsFiltered(total);
            output.setRecordsTotal(total);
        }
        catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return output;
    }

    @RequestMapping(value = "/returnCalculateList.json", method = {RequestMethod.POST})
    @ResponseBody
    public DataTablesOutput<CalculateVO> returnCalculateList(Locale locale, HttpServletRequest request, HttpSession session, @RequestBody DataTablesInput input, ModelMap modelVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        DataTablesOutput<CalculateVO> output = new DataTablesOutput<CalculateVO>();

        try {
            AdminVO sessionValue  = (AdminVO)session.getAttribute("sessionVO");

            CalculateVO parameterVO = new CalculateVO();
            parameterVO.setDataTablesInput(input);
            parameterVO.getSearchMap().put("account_id", sessionValue.getAccount_id());


            List<CalculateVO> calculateList = calculateService.selectReturnCalculateList(parameterVO.getSearchMap());
            int total = calculateService.selectReturnCalculateListTotal(parameterVO.getSearchMap());
            output.setDraw(input.getDraw());
            output.setData(calculateList);
            output.setRecordsFiltered(total);
            output.setRecordsTotal(total);
        }
        catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return output;
    }
}
