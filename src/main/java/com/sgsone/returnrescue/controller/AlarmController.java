package com.sgsone.returnrescue.controller;

import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.service.AlarmService;
import com.sgsone.returnrescue.vo.AdminVO;
import com.sgsone.returnrescue.vo.NotificationVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class AlarmController {

    @Autowired
    private ExceptionFactory exceptionFactory;

    @Autowired
    AlarmService alarmService;

    @RequestMapping(value = "/changeAlarmFlag.json", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public ModelAndView changeAlarmFlag(HttpSession session, ModelMap modelVO) {
        ModelAndView modelAndView = new ModelAndView("jsonView");
        String whoAmi = Thread.currentThread().getStackTrace()[1].toString();
        NotificationVO notificationVO = new NotificationVO();
        int result = 0;

        AdminVO sessionValue = (AdminVO)session.getAttribute("sessionVO");
        notificationVO.setAccount_id(sessionValue.getAccount_id());

        try {
            if(sessionValue != null){
                result = alarmService.changeAlarmFlag(notificationVO);

                if (result >= 0) {
                    modelAndView.addObject("resultCode", "success");
                } else {
                    modelAndView.addObject("resultCode", "fail");
                }
            } else {
                modelAndView.addObject("resultCode", "fail");
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            modelAndView.addObject("resultCode", "fail");
        }

        return modelAndView;
    }

    @RequestMapping(value = "/showAlarm.json", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public ModelAndView showAlarm(HttpSession session, ModelMap modelVO) {
        ModelAndView modelAndView = new ModelAndView("jsonView");
        String whoAmi = Thread.currentThread().getStackTrace()[1].toString();
        NotificationVO notificationVO = new NotificationVO();

        AdminVO sessionValue = (AdminVO)session.getAttribute("sessionVO");
        notificationVO.setAccount_id(sessionValue.getAccount_id());

        try {
            if(sessionValue != null){
                List<NotificationVO> alarmList = alarmService.selectAlarmList(notificationVO);
                modelVO.addAttribute("alarmList", alarmList);

            } else {

            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }

        return modelAndView;
    }

    @RequestMapping(value = "/changeReadFlag.json", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public ModelAndView changeReadFlag(HttpSession session, ModelMap modelVO) {
        ModelAndView modelAndView = new ModelAndView("jsonView");
        String whoAmi = Thread.currentThread().getStackTrace()[1].toString();
        NotificationVO notificationVO = new NotificationVO();
        int result = 0;

        AdminVO sessionValue = (AdminVO)session.getAttribute("sessionVO");
        notificationVO.setAccount_id(sessionValue.getAccount_id());

        try {
            if(sessionValue != null){
                result = alarmService.changeReadFlag(notificationVO);

                if (result >= 0) {
                    modelAndView.addObject("resultCode", "success");
                } else {
                    modelAndView.addObject("resultCode", "fail");
                }

            } else {
                modelAndView.addObject("resultCode", "fail");
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            modelAndView.addObject("resultCode", "fail");
        }

        return modelAndView;
    }

    @RequestMapping(value = "/deleteOneAlarm.json", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public ModelAndView deleteOneAlarm(HttpSession session, ModelMap modelVO, @ModelAttribute("parameterVO") NotificationVO parameterVO) {
        ModelAndView modelAndView = new ModelAndView("jsonView");
        String whoAmi = Thread.currentThread().getStackTrace()[1].toString();
        NotificationVO notificationVO = new NotificationVO();
        int result = 0;

        AdminVO sessionValue = (AdminVO)session.getAttribute("sessionVO");
        parameterVO.setAccount_id(sessionValue.getAccount_id());

        try {
            if(sessionValue != null){
                result = alarmService.deleteOneAlarm(parameterVO);

                if (result >= 0) {
                    modelAndView.addObject("resultCode", "success");
                } else {
                    modelAndView.addObject("resultCode", "fail");
                }
            } else {
                modelAndView.addObject("resultCode", "fail");
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            modelAndView.addObject("resultCode", "fail");
        }

        return modelAndView;
    }

    @RequestMapping(value = "/AlarmCount.json", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public ModelAndView AlarmCount(HttpSession session, ModelMap modelVO) {
        ModelAndView modelAndView = new ModelAndView("jsonView");
        String whoAmi = Thread.currentThread().getStackTrace()[1].toString();
        NotificationVO notificationVO = new NotificationVO();
        int AlarmCount = 0;

        AdminVO sessionValue = (AdminVO)session.getAttribute("sessionVO");
        notificationVO.setAccount_id(sessionValue.getAccount_id());

        try {
            if(sessionValue != null){
                AlarmCount = alarmService.AlarmCount(notificationVO);

                if (AlarmCount >= 0) {
                    modelAndView.addObject("resultCode", "success");
                    modelVO.addAttribute("AlarmCount", AlarmCount);
                } else {
                    modelAndView.addObject("resultCode", "fail");
                }
            } else {
                modelAndView.addObject("resultCode", "fail");
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            modelAndView.addObject("resultCode", "fail");
        }

        return modelAndView;
    }
}
