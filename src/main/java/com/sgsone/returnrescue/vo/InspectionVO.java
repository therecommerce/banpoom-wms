package com.sgsone.returnrescue.vo;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.sgsone.returnrescue.util.Aes128;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class InspectionVO extends BaseVO {

	private static final long serialVersionUID = 1L;

	private String aes_key = Aes128.DEFAULT_KEY;
	
	private String account_id;
	
	private String tracking_number;
		
	private String product_grade;
	
	private String product_id;
	
	private String product_barcode;
	
	private String product_name;
	
	private String product_count;
	
	private long file_id;
	
	private long inspection_id;
	
	private String file_state;
	
	private String state;
	
	private String seller_name;
	
	private String return_reason;
	
	private String inspection_opinion;
	
	private String inspection_dt;
	
	private String video_state;
	
	private String picture_state;
	
	private String check_yn;
	
	private String rack_id;
	
	private String rack_code;
	
	private String rack_name;
	
	private String purchaser_name;
	
	private String sell_type;
	
	public String getFile_state() {
		return file_state;
	}

	public void setFile_state(String file_state) {
		this.file_state = file_state;
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

	public String getProduct_grade() {
		return product_grade;
	}

	public void setProduct_grade(String product_grade) {
		this.product_grade = product_grade;
	}

	public String getProduct_id() {
		return product_id;
	}

	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}

	public long getFile_id() {
		return file_id;
	}

	public void setFile_id(long file_id) {
		this.file_id = file_id;
	}

	public long getInspection_id() {
		return inspection_id;
	}

	public void setInspection_id(long inspection_id) {
		this.inspection_id = inspection_id;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getTracking_number() {
		return tracking_number;
	}

	public void setTracking_number(String tracking_number) {
		this.tracking_number = tracking_number;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	
	

	public String getProduct_count() {
		return product_count;
	}

	public void setProduct_count(String product_count) {
		this.product_count = product_count;
	}

	public String getSeller_name() {
		return seller_name;
	}

	public void setSeller_name(String seller_name) {
		this.seller_name = seller_name;
	}

	public String getReturn_reason() {
		return return_reason;
	}

	public void setReturn_reason(String return_reason) {
		this.return_reason = return_reason;
	}

	public String getInspection_opinion() {
		return inspection_opinion;
	}

	public void setInspection_opinion(String inspection_opinion) {
		this.inspection_opinion = inspection_opinion;
	}

	public String getInspection_dt() {
		return inspection_dt;
	}

	public void setInspection_dt(String inspection_dt) {
		this.inspection_dt = inspection_dt;
	}

	public String getVideo_state() {
		return video_state;
	}

	public void setVideo_state(String video_state) {
		this.video_state = video_state;
	}

	public String getPicture_state() {
		return picture_state;
	}

	public void setPicture_state(String picture_state) {
		this.picture_state = picture_state;
	}

	public String getCheck_yn() {
		return check_yn;
	}

	public void setCheck_yn(String check_yn) {
		this.check_yn = check_yn;
	}

	public String getProduct_barcode() {
		return product_barcode;
	}

	public void setProduct_barcode(String product_barcode) {
		this.product_barcode = product_barcode;
	}

	public String getRack_id() {
		return rack_id;
	}

	public void setRack_id(String rack_id) {
		this.rack_id = rack_id;
	}

	public String getRack_code() {
		return rack_code;
	}

	public void setRack_code(String rack_code) {
		this.rack_code = rack_code;
	}

	public String getRack_name() {
		return rack_name;
	}

	public void setRack_name(String rack_name) {
		this.rack_name = rack_name;
	}

	public String getPurchaser_name() {
		return purchaser_name;
	}

	public void setPurchaser_name(String purchaser_name) {
		this.purchaser_name = purchaser_name;
	}

	public String getSell_type() {
		return sell_type;
	}

	public void setSell_type(String sell_type) {
		this.sell_type = sell_type;
	}
	
	
}
