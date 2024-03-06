package com.sgsone.returnrescue.dao;

import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.vo.ServiceRuleVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Repository
public class ServiceRuleDao {

    @Autowired
    private ExceptionFactory exceptionFactory;
    @Autowired
    SqlSessionTemplate sqlSessionTemplate;

    public List<ServiceRuleVO> selectServiceRuleList(Map<String,Object> param) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<ServiceRuleVO> serviceRuleVOList = new ArrayList<>();

        try {
            serviceRuleVOList = sqlSessionTemplate.selectList("serviceRule.selectServiceRuleList", param);
            return serviceRuleVOList;

        } catch (Exception e) {
            return null;

        }
    }
}
