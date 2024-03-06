package com.sgsone.returnrescue.dao;

import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.vo.OrderInfoVO;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OrderInfoDao {

    @Autowired
    private ExceptionFactory exceptionFactory;

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    public OrderInfoVO selectOrderInfoModal(String order_request_no) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        OrderInfoVO orderInfoVO = new OrderInfoVO();

        try {
            orderInfoVO = sqlSessionTemplate.selectOne("order.selectOrderInfoModal", order_request_no);
            return orderInfoVO;
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }
}
