package com.sgsone.returnrescue.dao;

import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.vo.CouponVO;
import com.sgsone.returnrescue.vo.FileVO;
import com.sgsone.returnrescue.vo.ProductListVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Repository
public class CouponDao {

    @Autowired
    private ExceptionFactory exceptionFactory;

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    public List<CouponVO> selectCouponList(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<CouponVO> resultList = new ArrayList<CouponVO>();
        try {
            resultList = sqlSessionTemplate.selectList("coupon.selectCouponList", parameterVO);

        } catch (Exception e) {

            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
        return resultList;
    }

    public int selectCouponListTotal(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        int result = 0;
        try {
            result = sqlSessionTemplate.selectOne("coupon.selectCouponListTotal", parameterVO);

        } catch (Exception e) {

            exceptionFactory.commonException(e, whoAmi);
            return 0;
        }
        return result;
    }

    public int deleteCouponInfo(CouponVO params) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            sqlSessionTemplate.delete("coupon.deleteCouponInfo", params);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
        return 1;
    }

    public int deleteCouponHistory(CouponVO params) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            sqlSessionTemplate.delete("coupon.deleteCouponHistory", params);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
        return 1;
    }

    public CouponVO selectCouponDetail(String coupon_no) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        try {
            return sqlSessionTemplate.selectOne("coupon.selectCouponDetail", coupon_no);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    public int updateCouponState(CouponVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            sqlSessionTemplate.update("coupon.updateCouponState", parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
        return 1;
    }

    public int insertCoupon(CouponVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            sqlSessionTemplate.insert("coupon.insertCoupon", parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
        return 1;
    }

    public int updateCoupon(CouponVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            sqlSessionTemplate.insert("coupon.updateCoupon", parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
        return 1;
    }
}
