package com.sgsone.returnrescue.vo;

import java.util.List;

public class HistoryVO{
	private String product_id;

	public String getProduct_id() {
		return product_id;
	}

	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}

	private String delivery_no;

	public String getDelivery_no() {
		return delivery_no;
	}

	public void setDelivery_no(String delivery_no) {
		this.delivery_no = delivery_no;
	}

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

	private String state;
	private String reg_dt;

	private List<String> product_id_list;

	public List<String> getProduct_id_list() {
		return product_id_list;
	}

	public void setProduct_id_list(List<String> product_id_list) {
		this.product_id_list = product_id_list;
	}

	private String delivery_type;

	public String getDelivery_type() {
		return delivery_type;
	}

	public void setDelivery_type(String delivery_type) {
		this.delivery_type = delivery_type;
	}

	public List<String> delivery_no_list;

	public List<String> getDelivery_no_list() {
		return delivery_no_list;
	}

	public void setDelivery_no_list(List<String> delivery_no_list) {
		this.delivery_no_list = delivery_no_list;
	}
}
