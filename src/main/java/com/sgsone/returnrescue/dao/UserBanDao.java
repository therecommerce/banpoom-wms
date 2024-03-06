package com.sgsone.returnrescue.dao;

import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.vo.UserBanVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserBanDao {

    @Autowired
    private ExceptionFactory exceptionFactory;

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    public int banHistory(UserBanVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.insert("userBan.banHistory", parameterVO);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
    }
}
