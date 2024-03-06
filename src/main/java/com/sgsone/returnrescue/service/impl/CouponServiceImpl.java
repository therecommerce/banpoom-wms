package com.sgsone.returnrescue.service.impl;

import com.sgsone.returnrescue.dao.CouponDao;
import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.service.CouponService;
import com.sgsone.returnrescue.vo.CouponVO;
import com.sgsone.returnrescue.vo.FileVO;
import com.sgsone.returnrescue.vo.ProductListVO;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service("couponService")
public class CouponServiceImpl implements CouponService {

    protected Log logger = LogFactory.getLog(AccountServiceImpl.class);

    @Autowired
    private ExceptionFactory exceptionFactory;

    @Autowired
    CouponDao couponDao;

    @Override
    public List<CouponVO> selectCouponList(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<CouponVO> resultList = new ArrayList<CouponVO>();
        try {
            if(parameterVO.get("coupon_state") != null && parameterVO.get("coupon_state") != "" ){
                parameterVO.put("coupon_state", parameterVO.get("coupon_state").toString().split(","));
            }
            resultList = couponDao.selectCouponList(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return resultList;
    }

    @Override
    public int selectCouponListTotal(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        int result = 0;
        try {
            result = couponDao.selectCouponListTotal(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return result;
    }

    @Override
    public int deleteCouponInfo(CouponVO params) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return couponDao.deleteCouponInfo(params);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return -1;
    }

    @Override
    public int deleteCouponHistory(CouponVO params) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return couponDao.deleteCouponHistory(params);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return -1;
    }

    @Override
    public CouponVO selectCouponDetail(String coupon_no) {
        CouponVO result = couponDao.selectCouponDetail(coupon_no);
        return result;
    }

    @Override
    public int updateCouponState(CouponVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return couponDao.updateCouponState(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return -1;
    }

    @Override
    public int insertCoupon(CouponVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return couponDao.insertCoupon(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return -1;
    }

    @Override
    public int updateCoupon(CouponVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return couponDao.updateCoupon(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return -1;
    }
}
