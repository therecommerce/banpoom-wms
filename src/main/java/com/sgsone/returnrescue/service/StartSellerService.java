package com.sgsone.returnrescue.service;

import com.sgsone.returnrescue.vo.SellerInquiryVO;
import com.sgsone.returnrescue.vo.StartSellerVO;

import java.util.List;
import java.util.Map;

public interface StartSellerService {

    List<StartSellerVO> selectStartSellerBoardList(Map<String, Object> params);

    Integer selectStartSellerBoardTotal(Map<String, Object> params);
    StartSellerVO selectStartSellerQnaDetail(String startseller_qna_no);

    int updateStartSellerAnswer(StartSellerVO startSellerVO);

    int insertStartSellerAnswerImage(StartSellerVO startSellerVO);

    List<Integer> selectStartSellerQuestionImage(StartSellerVO startSellerVO);

    List<Integer> selectStartSellerAnswerImage(StartSellerVO startSellerVO);
}
