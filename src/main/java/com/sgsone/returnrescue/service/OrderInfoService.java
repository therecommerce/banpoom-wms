package com.sgsone.returnrescue.service;

import com.sgsone.returnrescue.vo.OrderInfoVO;

public interface OrderInfoService {

    OrderInfoVO selectOrderInfoModal(String order_request_no);
}
