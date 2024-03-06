package com.sgsone.returnrescue.vo;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.sgsone.returnrescue.util.Aes128;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class ReleaseStateVO {

	private String aes_key = Aes128.DEFAULT_KEY;
	private String account_id;
	private String tracking_no;
	private String product_id;
	private String state;
	private String reg_dt;

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getReg_dt() {
		return reg_dt;
	}

	public void setReg_dt(String reg_dt) {
		this.reg_dt = reg_dt;
	}
	public String getAes_key() {
		return aes_key;
	}

	public void setAes_key(String aes_key) {
		this.aes_key = aes_key;
	}

	public String getAccount_id() {
		return account_id;
	}

	public void setAccount_id(String account_id) {
		this.account_id = account_id;
	}

	public String getProduct_id() {
		return product_id;
	}

	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}

	public String getTracking_no() {
		return tracking_no;
	}

	public void setTracking_no(String tracking_no) {
		this.tracking_no = tracking_no;
	}
}
