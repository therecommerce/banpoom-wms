package com.sgsone.returnrescue.service;

import com.sgsone.returnrescue.vo.SellerInquiryVO;
import com.sgsone.returnrescue.vo.UserInquiryVO;

import java.util.List;
import java.util.Map;

public interface UserInquiryService {

    List<UserInquiryVO> selectUserInquiryList(Map<String, Object> params);

    UserInquiryVO selectQnaUserInquiryDetail(String param);

    Integer selectQnaUserInquiryCount(Map<String, Object> params);

    int insertUserInquiryAnswer(UserInquiryVO userInquiryVO);

    List<Integer> selectUserInquiryImageQuestion(UserInquiryVO userInquiryVO);
    List<Integer> selectUserInquiryImageAnswer(UserInquiryVO userInquiryVO);

    int insertUserInquiryAnswerImage(UserInquiryVO userInquiryVO);
}
