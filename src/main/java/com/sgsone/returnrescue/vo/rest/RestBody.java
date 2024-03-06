package com.sgsone.returnrescue.vo.rest;

import java.util.List;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;

@JsonSerialize(include=JsonSerialize.Inclusion.NON_NULL)
public class RestBody {
	
    
//	private List<DevicePeriodVO> period_list;
//
//	private List<DevicStatusVO> status_list;
	
	private List<RestEventListVO> event_list;
	
	private String qrcode_id;
	
	private String account_id;
	
	private String account_pwd;

//	public List<DevicePeriodVO> getPeriod_list() {
//		return period_list;
//	}
//
//	public void setPeriod_list(List<DevicePeriodVO> period_list) {
//		this.period_list = period_list;
//	}
//
//	public List<DevicStatusVO> getStatus_list() {
//		return status_list;
//	}
//
//	public void setStatus_list(List<DevicStatusVO> status_list) {
//		this.status_list = status_list;
//	}

	public List<RestEventListVO> getEvent_list() {
		return event_list;
	}

	public void setEvent_list(List<RestEventListVO> event_list) {
		this.event_list = event_list;
	}

	public String getQrcode_id() {
		return qrcode_id;
	}

	public void setQrcode_id(String qrcode_id) {
		this.qrcode_id = qrcode_id;
	}

	public String getAccount_id() {
		return account_id;
	}

	public void setAccount_id(String account_id) {
		this.account_id = account_id;
	}

	public String getAccount_pwd() {
		return account_pwd;
	}

	public void setAccount_pwd(String account_pwd) {
		this.account_pwd = account_pwd;
	}
}
