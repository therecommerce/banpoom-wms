package com.sgsone.returnrescue.vo;

import java.util.List;
import java.util.Map;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.sgsone.returnrescue.util.Aes128;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class RackVO extends BaseVO {

	private static final long serialVersionUID = 1L;
	
	private String rack_product_no;
	
	private String rack_id;
	
	private String product_id;
	
	private String barcode;
	
	private String amount;
	
	private String product_barcode;
	
	private Map<String, String> product_list;
	
	private String pack_type;
	
	private String sell_type;
	
	private int product_count;
	
	private String seller_name;
	
	private String product_name;
	
	private String tracking_number;
	
	private String site_id;
	
	private String cell_id;
	
	private String rack_name;
	
	private String rack_code;
	
	private String return_product_count;
	
	private String purchaser_name;
	
	private String title;
		
	public String getRack_product_no() {
		return rack_product_no;
	}

	public void setRack_product_no(String rack_product_no) {
		this.rack_product_no = rack_product_no;
	}

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
	
	

	public String getSell_type() {
		return sell_type;
	}

	public void setSell_type(String sell_type) {
		this.sell_type = sell_type;
	}

	public int getProduct_count() {
		return product_count;
	}

	public void setProduct_count(int product_count) {
		this.product_count = product_count;
	}


	public String getSeller_name() {
		return seller_name;
	}

	public void setSeller_name(String seller_name) {
		this.seller_name = seller_name;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public String getTracking_number() {
		return tracking_number;
	}

	public void setTracking_number(String tracking_number) {
		this.tracking_number = tracking_number;
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


	public String getBarcode() {
		return barcode;
	}

	public void setBarcode(String barcode) {
		this.barcode = barcode;
	}

	public String getProduct_barcode() {
		return product_barcode;
	}

	public void setProduct_barcode(String product_barcode) {
		this.product_barcode = product_barcode;
	}

	public String getReturn_product_count() {
		return return_product_count;
	}

	public void setReturn_product_count(String return_product_count) {
		this.return_product_count = return_product_count;
	}

	public String getPurchaser_name() {
		return purchaser_name;
	}

	public void setPurchaser_name(String purchaser_name) {
		this.purchaser_name = purchaser_name;
	}

	public Map<String, String> getProduct_list() {
		return product_list;
	}

	public void setProduct_list(Map<String, String> product_list) {
		this.product_list = product_list;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}
}
