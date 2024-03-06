package com.sgsone.returnrescue.dao;

import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.vo.CalculateChartVO;
import com.sgsone.returnrescue.vo.CalculateVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Repository
public class CalculateDao {

    @Autowired
    private ExceptionFactory exceptionFactory;
    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    public List<CalculateVO> selectCalculateList(Map<String, Object> calculateVO) {
        return sqlSessionTemplate.selectList("calculate.selectCalculateList", calculateVO);
    }

    public int selectCalculateListTotal(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        int result =0;
        try {
            result = sqlSessionTemplate.selectOne("calculate.selectCalculateListTotal", parameterVO);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return 0;
        }
        return result;
    }

    public CalculateVO selectCalculatePrice() {
        return sqlSessionTemplate.selectOne("calculate.selectCalculatePrice");
    }

    public CalculateVO selectCalculateTotalInfo() {
        return sqlSessionTemplate.selectOne("calculate.selectCalculateTotalInfo");
    }

    public List<CalculateChartVO> selectCalculateChartInfo(CalculateVO parameterVO) {
        return sqlSessionTemplate.selectList("calculate.selectCalculateChartInfo", parameterVO);
    }

    public List<CalculateChartVO> selectReturnCalculateChartInfo(CalculateVO parameterVO) {
        return sqlSessionTemplate.selectList("calculate.selectReturnCalculateChartInfo", parameterVO);
    }

    public List<CalculateVO> selectCalculateDetailList(Map<String, Object> calculateVO) {
        return sqlSessionTemplate.selectList("calculate.selectCalculateDetailList", calculateVO);
    }

    public int selectCalculateDetailListTotal(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        int result =0;
        try {
            result = sqlSessionTemplate.selectOne("calculate.selectCalculateDetailListTotal", parameterVO);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return 0;
        }
        return result;
    }

    public CalculateVO selectCalculateState(String cal_dt) {
        return sqlSessionTemplate.selectOne("calculate.selectCalculateState", cal_dt);
    }
    public CalculateVO selectCalculateDetailInfo(String cal_no) {
        return sqlSessionTemplate.selectOne("calculate.selectCalculateDetailInfo", cal_no);
    }
    public CalculateVO selectCalculateModal(CalculateVO parameterVO) {
        return sqlSessionTemplate.selectOne("calculate.selectCalculateModal", parameterVO);
    }

    public List<CalculateVO> selectConsignCalculateList(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<CalculateVO> calculateVOList = new ArrayList<CalculateVO>();

        try {
            calculateVOList = sqlSessionTemplate.selectList("calculate.selectConsignCalculateList", parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return calculateVOList;
    }

    public Integer selectConsignCalculateListTotal(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        try {
            return sqlSessionTemplate.selectOne("calculate.selectConsignCalculateListTotal", parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return 0;
        }
    }


    public int updateCalState(CalculateVO param) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.update("calculate.updateCalState", param);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }

    public int insertCalculateDecide(CalculateVO param) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.insert("calculate.insertCalculateDecide", param);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }


    public List<CalculateVO> selectCalculateModalList(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<CalculateVO> calculateVOList = new ArrayList<CalculateVO>();

        try {
            calculateVOList = sqlSessionTemplate.selectList("calculate.selectCalculateModalList", parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return calculateVOList;
    }

    public CalculateVO selectCalculateModalDetail(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        CalculateVO calculateVO = new CalculateVO();

        try {
            calculateVO = sqlSessionTemplate.selectOne("calculate.selectCalculateModalDetail", parameterVO);
            return calculateVO;
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    public List<CalculateVO> selectReturnCalDetail(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<CalculateVO> calculateVOList = new ArrayList<CalculateVO>();

        try {
            calculateVOList = sqlSessionTemplate.selectList("calculate.selectReturnCalDetail", parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return calculateVOList;
    }

    public List<CalculateVO> selectCalculateModalListKeep(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<CalculateVO> calculateVOList = new ArrayList<CalculateVO>();

        try {
            calculateVOList = sqlSessionTemplate.selectList("calculate.selectCalculateModalListKeep", parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return calculateVOList;
    }


    public CalculateVO selectCalculateModalDetailKeep(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        CalculateVO calculateVO = new CalculateVO();

        try {
            calculateVO = sqlSessionTemplate.selectOne("calculate.selectCalculateModalDetailKeep", parameterVO);
            return calculateVO;
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

    public List<CalculateVO> selectCalculateDetail(Map<String, Object> calculateVO) {
        return sqlSessionTemplate.selectList("calculate.selectCalculateDetail", calculateVO);
    }

    public int selectCalculateDetailTotal(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        int result =0;
        try {
            result = sqlSessionTemplate.selectOne("calculate.selectCalculateDetailTotal", parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return 0;
        }
        return result;
    }

    public List<CalculateVO> selectCalculateModalTableDetail(Map<String, Object> calculateVO) {
        return sqlSessionTemplate.selectList("calculate.selectCalculateModalTableDetail", calculateVO);
    }

    public int selectCalculateModalTableDetailTotal(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        int result =0;
        try {
            result = sqlSessionTemplate.selectOne("calculate.selectCalculateModalTableDetailTotal", parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return 0;
        }
        return result;
    }

    public List<CalculateVO> selectReturnCalculateList(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        List<CalculateVO> calculateVOList = new ArrayList<CalculateVO>();

        try {
            calculateVOList = sqlSessionTemplate.selectList("calculate.selectReturnCalculateList", parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return calculateVOList;
    }

    public Integer selectReturnCalculateListTotal(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        try {
            return sqlSessionTemplate.selectOne("calculate.selectReturnCalculateListTotal", parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return 0;
        }
    }
}
