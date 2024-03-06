package com.sgsone.returnrescue.service;

import com.sgsone.returnrescue.vo.CouponVO;

import java.util.List;
import java.util.Map;

public interface CouponService {

    List<CouponVO> selectCouponList(Map<String, Object> parameterVO);

    int selectCouponListTotal(Map<String, Object> parameterVO);

    int deleteCouponInfo(CouponVO params);

    int deleteCouponHistory(CouponVO params);

    CouponVO selectCouponDetail(String coupon_no);

    int updateCouponState(CouponVO parameterVO);

    int insertCoupon(CouponVO parameterVO);

    int updateCoupon(CouponVO parameterVO);

}
