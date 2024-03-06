package com.sgsone.returnrescue.vo.chart;

import com.sgsone.returnrescue.vo.BaseVO;

public class ChartDataInput extends BaseVO {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String account_id;
	
	private String device_id;

	public String getAccount_id() {
		return account_id;
	}

	public void setAccount_id(String account_id) {
		this.account_id = account_id;
	}

	public String getDevice_id() {
		return device_id;
	}

	public void setDevice_id(String device_id) {
		this.device_id = device_id;
	}
}