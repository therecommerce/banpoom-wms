package com.sgsone.returnrescue.dao;

import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.vo.PointVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PointDao {

    @Autowired
    private ExceptionFactory exceptionFactory;

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;


    public int insertPointInfo(PointVO pointVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.insert("point.insertPointInfo", pointVO);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;

        }
    }

    public int insertPointHistory(PointVO pointVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.insert("point.insertPointHistory", pointVO);

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;

        }
    }

    public PointVO selectPointInfo() {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
        PointVO pointVO = new PointVO();
        try {
            pointVO = sqlSessionTemplate.selectOne("point.selectPointInfo");
            return pointVO;

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;

        }
    }

}
