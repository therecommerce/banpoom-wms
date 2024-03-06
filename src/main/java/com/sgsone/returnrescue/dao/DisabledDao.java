package com.sgsone.returnrescue.dao;

import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.vo.DirectProductManagementVO;
import com.sgsone.returnrescue.vo.DisabledVO;
import com.sgsone.returnrescue.vo.OfferManagementVO;
import com.sgsone.returnrescue.vo.ProductListVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Repository
public class DisabledDao {

    @Autowired
    private ExceptionFactory exceptionFactory;
    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    public OfferManagementVO selectDisabledCount() {
        return sqlSessionTemplate.selectOne("OfferManagement.selectOfferCount");
    }

    public List<DisabledVO> selectDisabledList(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<DisabledVO> resultList = new ArrayList<DisabledVO>();
        try {
            resultList = sqlSessionTemplate.selectList("disabled.selectDisabledList", parameterVO);

        } catch (Exception e) {

            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
        return resultList;
    }

    public int selectDisabledListTotal(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        int result = 0;
        try {
            result = sqlSessionTemplate.selectOne("disabled.selectDisabledListTotal", parameterVO);

        } catch (Exception e) {

            exceptionFactory.commonException(e, whoAmi);
            return 0;
        }
        return result;
    }

    public OfferManagementVO selectDisabledDetail(String product_id) {
        return sqlSessionTemplate.selectOne("OfferManagement.selectOfferDetail", product_id);
    }

    public int insertDisabledProduct(OfferManagementVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        int result = 0;
        try {
            result = sqlSessionTemplate.insert("OfferManagement.insertDisabledProduct", parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }

        return result;
    }

    public ProductListVO selectProductDetail(ProductListVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.selectOne("OfferManagement.selectProductDetail", parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    public int insertDiscardBasic(OfferManagementVO parameterVO) {

        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            sqlSessionTemplate.insert("OfferManagement.insertDiscardBasic", parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
        return 1;
    }

    public int insertRecoveryBasic(OfferManagementVO parameterVO) {

        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            sqlSessionTemplate.insert("OfferManagement.insertRecoveryBasic", parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
        return 1;
    }

    public int insertHistory_product(OfferManagementVO parameterVO) {

        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            sqlSessionTemplate.insert("OfferManagement.insertHistory_product", parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
        return 1;
    }
}

