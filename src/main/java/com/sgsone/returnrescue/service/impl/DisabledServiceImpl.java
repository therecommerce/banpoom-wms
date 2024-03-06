package com.sgsone.returnrescue.service.impl;

import com.sgsone.returnrescue.dao.DisabledDao;
import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.service.DisabledService;
import com.sgsone.returnrescue.vo.DisabledVO;
import com.sgsone.returnrescue.vo.OfferManagementVO;
import com.sgsone.returnrescue.vo.ProductListVO;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service("disabledService")
public class DisabledServiceImpl implements DisabledService {

    protected Log logger = LogFactory.getLog(AccountServiceImpl.class);

    @Autowired
    private ExceptionFactory exceptionFactory;

    @Autowired
    DisabledDao disabledDao;

    @Override
    public OfferManagementVO selectDisabledCount() {
        return disabledDao.selectDisabledCount();
    }

    @Override
    public List<DisabledVO> selectDisabledList(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<DisabledVO> resultList = new ArrayList<DisabledVO>();
        try {
            if(parameterVO.get("sort_type") != null && parameterVO.get("sort_type") != "" ){
                parameterVO.put("sort_type",parameterVO.get("sort_type").toString().split(","));
            }
            resultList = disabledDao.selectDisabledList(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return resultList;
    }

    @Override
    public int selectDisabledListTotal(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        int resultList =0;
        try {
            resultList = disabledDao.selectDisabledListTotal(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return resultList;
    }

    @Override
    public OfferManagementVO selectDisabledDetail(String product_id) {

        OfferManagementVO managementDetailVO = disabledDao.selectDisabledDetail(product_id);

        return managementDetailVO;
    }

    @Override
    public ProductListVO selectProductDetail(ProductListVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return disabledDao.selectProductDetail(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    @Override
    public int insertDiscardBasic(OfferManagementVO parameterVO) {

        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            disabledDao.insertDiscardBasic(parameterVO);
            return 1;
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return -1;
    }

    @Override
    public int insertRecoveryBasic(OfferManagementVO parameterVO) {

        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            disabledDao.insertRecoveryBasic(parameterVO);
            return 1;
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return -1;
    }

    @Override
    public int insertHistory_product(OfferManagementVO parameterVO) {

        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            disabledDao.insertHistory_product(parameterVO);
            return 1;
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return -1;
    }

    @Override
    public int insertDisabledProduct(OfferManagementVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        int result = 0;
        try {
            result = disabledDao.insertDisabledProduct(parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }

        return result;
    }
}
