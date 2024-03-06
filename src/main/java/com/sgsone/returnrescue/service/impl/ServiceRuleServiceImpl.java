package com.sgsone.returnrescue.service.impl;

import com.sgsone.returnrescue.dao.ServiceRuleDao;
import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.service.ServiceRuleService;
import com.sgsone.returnrescue.vo.ServiceRuleVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service
public class ServiceRuleServiceImpl implements ServiceRuleService {

    @Autowired
    private ExceptionFactory exceptionFactory;

    @Autowired
    ServiceRuleDao serviceRuleDao;

    public List<ServiceRuleVO> selectServiceRuleList(Map<String,Object> param) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<ServiceRuleVO> serviceRuleVOList = new ArrayList<>();

        try {
            serviceRuleVOList = serviceRuleDao.selectServiceRuleList(param);
            return serviceRuleVOList;
        } catch (Exception e) {
            return null;
        }
    }
}
