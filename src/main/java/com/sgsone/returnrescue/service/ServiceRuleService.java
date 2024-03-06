package com.sgsone.returnrescue.service;

import com.sgsone.returnrescue.vo.ServiceRuleVO;

import java.util.List;
import java.util.Map;

public interface ServiceRuleService {

    List<ServiceRuleVO> selectServiceRuleList(Map<String,Object> param);
}
