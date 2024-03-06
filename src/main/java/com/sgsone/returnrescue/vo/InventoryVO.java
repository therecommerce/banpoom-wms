package com.sgsone.returnrescue.vo;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.sgsone.returnrescue.util.Aes128;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class InventoryVO extends BaseVO {

	private static final long serialVersionUID = 1L;

	private String rack_id;
	
	private String product_id;
	
	private String pack_type;
	
	private int product_count;
	
	private int remain_count;
	
	private int total_release_count;
	
	private int sell_count;
	
	private String seller;
	
	private String sell_type;
	
	private String seller_name;
	
	private String product_name;
	
	private String tracking_no;
	
	private String tracking_number;
	
	private String site_id;
	
	private String cell_id;
	
	private String rack_name;
	
	private String rack_code;
	
	private String type = "";
	
	private String state;
	
	private String status;
	
	private String category;
	
	private String category_id;
	
	private String product_option;
	
	private String product_price;
	
	private String order_request_dt;
	
	private String order_delivery_dt;
	
	private String order_delivery_state;
	
	private String order_rcv_name;
	
	private String order_request_id;
	
	private String check_yn;
	
	private String smartstore_order_no;
	
	private String smartstore_name;
	
	private String file_id;
	
	private String product_status;

	private String progress;
	

	public String getRack_id() {
		return rack_id;
	}

	public void setRack_id(String rack_id) {
		this.rack_id = rack_id;
	}

	public String getProduct_id() {
		return product_id;
	}

	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}

	public String getPack_type() {
		return pack_type;
	}

	public void setPack_type(String pack_type) {
		this.pack_type = pack_type;
	}

	public int getProduct_count() {
		return product_count;
	}

	public void setProduct_count(int product_count) {
		this.product_count = product_count;
	}

	public int getRemain_count() {
		return remain_count;
	}

	public void setRemain_count(int remain_count) {
		this.remain_count = remain_count;
	}

	public String getSeller() {
		return seller;
	}

	public void setSeller(String seller) {
		this.seller = seller;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}


	public String getTracking_no() {
		return tracking_no;
	}

	public void setTracking_no(String tracking_no) {
		this.tracking_no = tracking_no;
	}

	public String getSite_id() {
		return site_id;
	}

	public void setSite_id(String site_id) {
		this.site_id = site_id;
	}

	public String getCell_id() {
		return cell_id;
	}

	public void setCell_id(String cell_id) {
		this.cell_id = cell_id;
	}

	public String getRack_name() {
		return rack_name;
	}

	public void setRack_name(String rack_name) {
		this.rack_name = rack_name;
	}

	public String getRack_code() {
		return rack_code;
	}

	public void setRack_code(String rack_code) {
		this.rack_code = rack_code;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}


	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getProduct_option() {
		return product_option;
	}

	public void setProduct_option(String product_option) {
		this.product_option = product_option;
	}

	public String getProduct_price() {
		return product_price;
	}

	public void setProduct_price(String product_price) {
		this.product_price = product_price;
	}

	public String getOrder_request_dt() {
		return order_request_dt;
	}

	public void setOrder_request_dt(String order_request_dt) {
		this.order_request_dt = order_request_dt;
	}

	public String getOrder_delivery_dt() {
		return order_delivery_dt;
	}

	public void setOrder_delivery_dt(String order_delivery_dt) {
		this.order_delivery_dt = order_delivery_dt;
	}

	public String getOrder_delivery_state() {
		return order_delivery_state;
	}

	public void setOrder_delivery_state(String order_delivery_state) {
		this.order_delivery_state = order_delivery_state;
	}

	public String getOrder_rcv_name() {
		return order_rcv_name;
	}

	public void setOrder_rcv_name(String order_rcv_name) {
		this.order_rcv_name = order_rcv_name;
	}

	public String getOrder_request_id() {
		return order_request_id;
	}

	public void setOrder_request_id(String order_request_id) {
		this.order_request_id = order_request_id;
	}

	public String getCheck_yn() {
		return check_yn;
	}

	public void setCheck_yn(String check_yn) {
		this.check_yn = check_yn;
	}

	public String getSmartstore_order_no() {
		return smartstore_order_no;
	}

	public void setSmartstore_order_no(String smartstore_order_no) {
		this.smartstore_order_no = smartstore_order_no;
	}

	public String getSmartstore_name() {
		return smartstore_name;
	}

	public void setSmartstore_name(String smartstore_name) {
		this.smartstore_name = smartstore_name;
	}

	public String getFile_id() {
		return file_id;
	}

	public void setFile_id(String file_id) {
		this.file_id = file_id;
	}

	public String getSell_type() {
		return sell_type;
	}

	public void setSell_type(String sell_type) {
		this.sell_type = sell_type;
	}
	public String getSeller_name() {
		return seller_name;
	}

	public void setSeller_name(String seller_name) {
		this.seller_name = seller_name;
	}
	public String getCategory_id() {
		return category_id;
	}

	public void setCategory_id(String category_id) {
		this.category_id = category_id;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getSell_count() {
		return sell_count;
	}

	public void setSell_count(int sell_count) {
		this.sell_count = sell_count;
	}

	public int getTotal_release_count() {
		return total_release_count;
	}

	public void setTotal_release_count(int total_release_count) {
		this.total_release_count = total_release_count;
	}

	public String getProduct_status() {
		return product_status;
	}

	public void setProduct_status(String product_status) {
		this.product_status = product_status;
	}

	public String getTracking_number() {
		return tracking_number;
	}

	public void setTracking_number(String tracking_number) {
		this.tracking_number = tracking_number;
	}

	public String getProgress() {
		return progress;
	}

	public void setProgress(String progress) {
		this.progress = progress;
	}
}
