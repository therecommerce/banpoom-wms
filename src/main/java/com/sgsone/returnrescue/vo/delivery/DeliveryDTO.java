package com.sgsone.returnrescue.vo.delivery;

import lombok.Getter;
import lombok.Setter;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import java.util.List;

@Getter
@Setter
public class DeliveryDTO {
    private String returnDeliveryId;    //배송정보아이디
    private String deliveryUniqueCode;	//배송고유번호
    private String centerCode;	        //발송지코드
    private String deliverCode;	        //택배사코드
    private String sndName;	            //보내는분명
    private String sndZipCode;	        //보내는분 우편번호
    private String sndAdd1;	            //보내는분 기본주소
    private String sndAdd2;	            //보내는분 상세주소
    private String itemName;            //상품명

    private String sndTel1;	            //보내는분 전화1
    private String sndTel2;	            //보내는분 전화2

    private String rcvName;	            //받는분명

    private String rcvZipCode;	        //받는분 우편번호

    private String rcvAdd1;	            //받는분 기본주소

    private String rcvAdd2;	            //받는분 상세주소
    private String rcvTel1;	            //받는분 전화1
    private String rcvTel2;	            //받는분 전화2

    private String sellerId ;	        //판매자고유ID
    private String ordererName;	        //주문자명
    private String ordererTel1;	        //주문자전화1
    private String ordererTel2;	        //주문자전화2
    private String reqState;	        //처리상태
    private String orgDeliverCode;	    //원택배사코드
    private String orgTrackingNo;       //운송장번호

    private String boxSize;	            //기본 박스 규격
    private String msgToDelivery;	    //배송메시지
    private String deliveryUserId;
}
