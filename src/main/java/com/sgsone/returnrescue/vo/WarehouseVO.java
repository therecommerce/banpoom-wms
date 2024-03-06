package com.sgsone.returnrescue.vo;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.sgsone.returnrescue.util.Aes128;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class WarehouseVO extends BaseVO {

	private static final long serialVersionUID = 1L;

	private String account_id;
	
	private String product_name;
	
	private String product_id;
	
	private String return_reason;
	
	private String tracking_no;
	
	private String image_id;
	
	private String action;
	
	private String product_barcode;
	
	private String order_no;
	
	private String order_name;

	public String getAccount_id() {
		return account_id;
	}

	public void setAccount_id(String account_id) {
		this.account_id = account_id;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public String getProduct_id() {
		return product_id;
	}

	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}

	public String getReturn_reason() {
		return return_reason;
	}

	public void setReturn_reason(String return_reason) {
		this.return_reason = return_reason;
	}

	public String getTracking_no() {
		return tracking_no;
	}

	public void setTracking_no(String tracking_no) {
		this.tracking_no = tracking_no;
	}
	
	

	public String getProduct_barcode() {
		return product_barcode;
	}

	public void setProduct_barcode(String product_barcode) {
		this.product_barcode = product_barcode;
	}

	public String getAction() {
		return action;
	}

	public void setAction(String action) {
		this.action = action;
	}

	public String getOrder_no() {
		return order_no;
	}

	public void setOrder_no(String order_no) {
		this.order_no = order_no;
	}

	public String getOrder_name() {
		return order_name;
	}

	public void setOrder_name(String order_name) {
		this.order_name = order_name;
	}

	public String getImage_id() { return image_id; }

	public void setImage_id(String image_id) { this.image_id = image_id; }

}
