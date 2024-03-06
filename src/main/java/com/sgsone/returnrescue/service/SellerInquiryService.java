package com.sgsone.returnrescue.service;

import com.sgsone.returnrescue.vo.QnaVO;
import com.sgsone.returnrescue.vo.SellerInquiryVO;

import java.util.List;
import java.util.Map;

public interface SellerInquiryService {

    List<SellerInquiryVO> selectSellerInquiryList(Map<String, Object> params);

    SellerInquiryVO selectQnaSellerInquiryDetail(String param);

    Integer selectQnaSellerInquiryCount(Map<String, Object> params);

    int insertSellerInquiryAnswer(SellerInquiryVO sellerInquiryVO);

    List<Integer> selectSellerInquiryImageQuestion(SellerInquiryVO sellerInquiryVO);
    List<Integer> selectSellerInquiryImageAnswer(SellerInquiryVO sellerInquiryVO);

    int insertSellerInquiryAnswerImage(SellerInquiryVO sellerInquiryVO);

//    SellerInquiryVO selectQnaList(int qna_no);
    SellerInquiryVO selectQnaList(Map<String, Object> params);

}
