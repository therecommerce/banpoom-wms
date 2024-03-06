package com.sgsone.returnrescue.service;

import com.sgsone.returnrescue.vo.NoticeManagementVO;

import java.util.List;
import java.util.Map;

public interface NoticeManagementService {

    List<NoticeManagementVO> selectNoticeList(Map<String,Object> parameterVO);

    int selectNoticeListTotal(Map<String,Object> parameterVO);

    int deleteNotice(NoticeManagementVO params);

    NoticeManagementVO selectNoticeDetail(String notice_no);

    int insertNotice(NoticeManagementVO parameterVO);
}
