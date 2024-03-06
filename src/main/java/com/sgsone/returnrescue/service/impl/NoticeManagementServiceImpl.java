package com.sgsone.returnrescue.service.impl;

import com.sgsone.returnrescue.dao.NoticeManagementDao;
import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.service.NoticeManagementService;
import com.sgsone.returnrescue.vo.NoticeManagementVO;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("noticeManagementService")
public class NoticeManagementServiceImpl implements NoticeManagementService {

    protected Log logger = LogFactory.getLog(AccountServiceImpl.class);

    @Autowired
    private ExceptionFactory exceptionFactory;

    @Autowired
    private NoticeManagementDao noticeManagementDao;

    @Override
    public List<NoticeManagementVO> selectNoticeList(Map<String,Object> parameterVO) {

        List<NoticeManagementVO> noticeList = noticeManagementDao.selectNoticeList(parameterVO);

        return noticeList;
    }

    @Override
    public int selectNoticeListTotal(Map<String,Object> parameterVO) {

        int result = noticeManagementDao.selectNoticeListTotal(parameterVO);

        return result;
    }

    @Override
    public int deleteNotice(NoticeManagementVO params) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return noticeManagementDao.deleteNotice(params);
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }
        return -1;
    }

    @Override
    public NoticeManagementVO selectNoticeDetail(String notice_no) {

        return noticeManagementDao.selectNoticeDetail(notice_no);
    }

    @Override
    public int insertNotice(NoticeManagementVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {

            return noticeManagementDao.insertNotice(parameterVO);
        } catch (Exception e) {

            exceptionFactory.commonException(e, whoAmi);
        }
        return -1;
    }
}
