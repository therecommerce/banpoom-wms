package com.sgsone.returnrescue.dao;

import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.vo.NoticeManagementVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public class NoticeManagementDao {

    @Autowired
    private ExceptionFactory exceptionFactory;
    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    public List<NoticeManagementVO> selectNoticeList(Map<String,Object> parameterVO) {
        return sqlSessionTemplate.selectList("noticeManagement.selectNoticeList", parameterVO);
    }

    public int selectNoticeListTotal(Map<String,Object> parameterVO) {
        return sqlSessionTemplate.selectOne("noticeManagement.selectNoticeListTotal",parameterVO);
    }

    public int deleteNotice(NoticeManagementVO params) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            sqlSessionTemplate.delete("noticeManagement.deleteNotice", params);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return -1;
        }
        return 1;
    }

    public NoticeManagementVO selectNoticeDetail(String notice_no) {
        return sqlSessionTemplate.selectOne("noticeManagement.selectNoticeDetail", notice_no);
    }

    public int insertNotice(NoticeManagementVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {

            sqlSessionTemplate.insert("noticeManagement.insertNotice", parameterVO);
        } catch (Exception e) {

            exceptionFactory.commonException(e, whoAmi);
            return -1;

        }
        return 1;
    }
}
