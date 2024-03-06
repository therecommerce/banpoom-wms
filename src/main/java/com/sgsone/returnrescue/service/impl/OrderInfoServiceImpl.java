package com.sgsone.returnrescue.service.impl;

import com.sgsone.returnrescue.dao.OrderInfoDao;
import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.service.OrderInfoService;
import com.sgsone.returnrescue.vo.OrderInfoVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderInfoServiceImpl implements OrderInfoService {

    @Autowired
    private ExceptionFactory exceptionFactory;

    @Autowired
    private OrderInfoDao orderInfoDao;

    public OrderInfoVO selectOrderInfoModal(String order_request_no) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        OrderInfoVO orderInfoVO = new OrderInfoVO();

        try {
            orderInfoVO = orderInfoDao.selectOrderInfoModal(order_request_no);
            return orderInfoVO;

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }
}
