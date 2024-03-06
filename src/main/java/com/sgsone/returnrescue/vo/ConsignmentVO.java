package com.sgsone.returnrescue.vo;

import com.sgsone.returnrescue.util.Aes128;

import java.util.List;
import java.util.Map;

public class ConsignmentVO extends BaseVO {

	private String aes_key = Aes128.DEFAULT_KEY;
	private String product_id;
	private String sell_type;
	private String category_name;
	private String seller_name;
	private String product_name;
	private int product_count;
	private String product_state;
	private String tracking_no;
	private String product_grade;
	private String inspector_name;

	private String inspection_opinion;
	private String product_selling_dt;
	private boolean is_direct_delivery;
	private String bundle_delivery;

	private String storage_dt;
	private String diffDate_storage_dt;

	public String getStorage_dt() {
		return storage_dt;
	}

	public void setStorage_dt(String storage_dt) {
		this.storage_dt = storage_dt;
	}

	public String getDiffDate_storage_dt() {
		return diffDate_storage_dt;
	}

	public void setDiffDate_storage_dt(String diffDate_storage_dt) {
		this.diffDate_storage_dt = diffDate_storage_dt;
	}

	public String getBundle_delivery() {
		return bundle_delivery;
	}

	public void setBundle_delivery(String bundle_delivery) {
		this.bundle_delivery = bundle_delivery;
	}

	public String getProduct_id() {
		return product_id;
	}

	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}
	public String getAes_key() {
		return aes_key;
	}

	public void setAes_key(String aes_key) {
		this.aes_key = aes_key;
	}

	public String getSell_type() {
		return sell_type;
	}

	public void setSell_type(String sell_type) {
		this.sell_type = sell_type;
	}

	public String getCategory_name() {
		return category_name;
	}

	public void setCategory_name(String category_name) {
		this.category_name = category_name;
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

	public int getProduct_count() {
		return product_count;
	}

	public void setProduct_count(int product_count) {
		this.product_count = product_count;
	}

	public String getProduct_state() {
		return product_state;
	}

	public void setProduct_state(String product_state) {
		this.product_state = product_state;
	}

	public String getTracking_no() {
		return tracking_no;
	}

	public void setTracking_no(String tracking_no) {
		this.tracking_no = tracking_no;
	}

	public String getProduct_grade() {
		return product_grade;
	}

	public void setProduct_grade(String product_grade) {
		this.product_grade = product_grade;
	}

	public String getInspector_name() {
		return inspector_name;
	}

	public void setInspector_name(String inspector_name) {
		this.inspector_name = inspector_name;
	}

	public String getProduct_selling_dt() {
		return product_selling_dt;
	}

	public void setProduct_selling_dt(String product_selling_dt) {
		this.product_selling_dt = product_selling_dt;
	}

	public String getInspection_opinion() {
		return inspection_opinion;
	}

	public void setInspection_opinion(String inspection_opinion) {
		this.inspection_opinion = inspection_opinion;
	}


	private String store_name;
	private String company_phone;
	private String product_price;
	private String seller_url;
	private String purchaser_name;
	private String return_reason;
	private String purchaser_phone;
	private String return_request_message;
	private String pickup_zipcode;
	private String pickup_address1;
	private String pickup_address2;
	private String delivery_option;
	private int category_id;
	private int parent_category_id;
	private int product_vprice;
	private String forwarding_destination_zip;
	private String forwarding_destination_addr1;
	private String forwarding_destination_addr2;
	private String delivery_company;
	private String delivery_company1;
	private String delivery_company2;
	private String delivery_type;
	private String delivery_charge;
	private String return_location_zip;
	private String return_location_addr1;
	private String return_location_addr2;
	private String return_charge;
	private String change_type;
	private String delivery_number;
	private String company_name;
	private String selling_start_dt;

	public String getSelling_start_dt() {
		return selling_start_dt;
	}

	public void setSelling_start_dt(String selling_start_dt) {
		this.selling_start_dt = selling_start_dt;
	}

	public String getCompany_name() {
		return company_name;
	}

	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}

	public Boolean getSelling() {
		return isSelling;
	}

	public void setSelling(Boolean selling) {
		isSelling = selling;
	}

	private Boolean isSelling;

	public String getChange_type() {
		return change_type;
	}

	public void setChange_type(String change_type) {
		this.change_type = change_type;
	}


	public String getForwarding_destination_zip() {
		return forwarding_destination_zip;
	}

	public void setForwarding_destination_zip(String forwarding_destination_zip) {
		this.forwarding_destination_zip = forwarding_destination_zip;
	}

	public String getForwarding_destination_addr1() {
		return forwarding_destination_addr1;
	}

	public void setForwarding_destination_addr1(String forwarding_destination_addr1) {
		this.forwarding_destination_addr1 = forwarding_destination_addr1;
	}

	public String getForwarding_destination_addr2() {
		return forwarding_destination_addr2;
	}

	public void setForwarding_destination_addr2(String forwarding_destination_addr2) {
		this.forwarding_destination_addr2 = forwarding_destination_addr2;
	}

	public String getDelivery_company() {
		return delivery_company;
	}

	public void setDelivery_company(String delivery_company) {
		this.delivery_company = delivery_company;
	}

	public String getDelivery_type() {
		return delivery_type;
	}

	public void setDelivery_type(String delivery_type) {
		this.delivery_type = delivery_type;
	}

	public String getDelivery_charge() {
		return delivery_charge;
	}

	public void setDelivery_charge(String delivery_charge) {
		this.delivery_charge = delivery_charge;
	}

	public String getReturn_location_zip() {
		return return_location_zip;
	}

	public void setReturn_location_zip(String return_location_zip) {
		this.return_location_zip = return_location_zip;
	}

	public String getReturn_location_addr1() {
		return return_location_addr1;
	}

	public void setReturn_location_addr1(String return_location_addr1) {
		this.return_location_addr1 = return_location_addr1;
	}

	public String getReturn_location_addr2() {
		return return_location_addr2;
	}

	public void setReturn_location_addr2(String return_location_addr2) {
		this.return_location_addr2 = return_location_addr2;
	}

	public String getReturn_charge() {
		return return_charge;
	}

	public void setReturn_charge(String return_charge) {
		this.return_charge = return_charge;
	}

	public int getProduct_vprice() {
		return product_vprice;
	}

	public void setProduct_vprice(int product_vprice) {
		this.product_vprice = product_vprice;
	}

	public int getCategory_id() {
		return category_id;
	}

	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}

	public int getParent_category_id() {
		return parent_category_id;
	}

	public void setParent_category_id(int parent_category_id) {
		this.parent_category_id = parent_category_id;
	}
	public String getPickup_zipcode() {
		return pickup_zipcode;
	}

	public void setPickup_zipcode(String pickup_zipcode) {
		this.pickup_zipcode = pickup_zipcode;
	}
	public String getStore_name() {
		return store_name;
	}

	public void setStore_name(String store_name) {
		this.store_name = store_name;
	}

	public String getCompany_phone() {
		return company_phone;
	}

	public void setCompany_phone(String company_phone) {
		this.company_phone = company_phone;
	}

	public String getProduct_price() {
		return product_price;
	}

	public void setProduct_price(String product_price) {
		this.product_price = product_price;
	}

	public String getSeller_url() {
		return seller_url;
	}

	public void setSeller_url(String seller_url) {
		this.seller_url = seller_url;
	}

	public String getPurchaser_name() {
		return purchaser_name;
	}

	public void setPurchaser_name(String purchaser_name) {
		this.purchaser_name = purchaser_name;
	}

	public String getReturn_reason() {
		return return_reason;
	}

	public void setReturn_reason(String return_reason) {
		this.return_reason = return_reason;
	}

	public String getPurchaser_phone() {
		return purchaser_phone;
	}

	public void setPurchaser_phone(String purchaser_phone) {
		this.purchaser_phone = purchaser_phone;
	}

	public String getReturn_request_message() {
		return return_request_message;
	}

	public void setReturn_request_message(String return_request_message) {
		this.return_request_message = return_request_message;
	}

	public String getPickup_address1() {
		return pickup_address1;
	}

	public void setPickup_address1(String pickup_address1) {
		this.pickup_address1 = pickup_address1;
	}

	public String getPickup_address2() {
		return pickup_address2;
	}

	public void setPickup_address2(String pickup_address2) {
		this.pickup_address2 = pickup_address2;
	}

	public String getDelivery_option() {
		return delivery_option;
	}

	public void setDelivery_option(String delivery_option) {
		this.delivery_option = delivery_option;
	}

	public int getDiffDate() {
		return diffDate;
	}

	public void setDiffDate(int diffDate) {
		this.diffDate = diffDate;
	}

	public int diffDate;

	public String getDelivery_number() {
		return delivery_number;
	}

	public void setDelivery_number(String delivery_number) {
		this.delivery_number = delivery_number;
	}

	public String getDelivery_company1() {
		return delivery_company1;
	}

	public void setDelivery_company1(String delivery_company1) {
		this.delivery_company1 = delivery_company1;
	}

	public String getDelivery_company2() {
		return delivery_company2;
	}

	public void setDelivery_company2(String delivery_company2) {
		this.delivery_company2 = delivery_company2;
	}

	public boolean isIs_direct_delivery() {
		return is_direct_delivery;
	}

	public void setIs_direct_delivery(boolean is_direct_delivery) {
		this.is_direct_delivery = is_direct_delivery;
	}

	private String option_category1;
	private String option_category2;
	private String option_category3;
	private String option_category4;
	private String option_category5;
	private String option_name1;
	private String option_name2;
	private String option_name3;
	private String option_name4;
	private String option_name5;
	private String optionName1;
	private String optionName2;
	private String optionName3;
	private String optionName4;
	private String optionName5;
	private String option1;
	private String option2;
	private String option3;
	private String option4;
	private String option5;
	private Integer optionPrice;
	private Integer optionCount;
	private Integer option_id;
	private Integer option_count;

	public Integer getOption_count() {
		return option_count;
	}

	public void setOption_count(Integer option_count) {
		this.option_count = option_count;
	}

	public Integer getOption_id() {
		return option_id;
	}

	public void setOption_id(Integer option_id) {
		this.option_id = option_id;
	}

	public String getOption_category1() {
		return option_category1;
	}

	public void setOption_category1(String option_category1) {
		this.option_category1 = option_category1;
	}

	public String getOption_category2() {
		return option_category2;
	}

	public void setOption_category2(String option_category2) {
		this.option_category2 = option_category2;
	}

	public String getOption_category3() {
		return option_category3;
	}

	public void setOption_category3(String option_category3) {
		this.option_category3 = option_category3;
	}

	public String getOption_category4() {
		return option_category4;
	}

	public void setOption_category4(String option_category4) {
		this.option_category4 = option_category4;
	}

	public String getOption_category5() {
		return option_category5;
	}

	public void setOption_category5(String option_category5) {
		this.option_category5 = option_category5;
	}

	public String getOption_name1() {
		return option_name1;
	}

	public void setOption_name1(String option_name1) {
		this.option_name1 = option_name1;
	}

	public String getOption_name2() {
		return option_name2;
	}

	public void setOption_name2(String option_name2) {
		this.option_name2 = option_name2;
	}

	public String getOption_name3() {
		return option_name3;
	}

	public void setOption_name3(String option_name3) {
		this.option_name3 = option_name3;
	}

	public String getOption_name4() {
		return option_name4;
	}

	public void setOption_name4(String option_name4) {
		this.option_name4 = option_name4;
	}

	public String getOption_name5() {
		return option_name5;
	}

	public void setOption_name5(String option_name5) {
		this.option_name5 = option_name5;
	}

	public String getOptionName1() {
		return optionName1;
	}

	public void setOptionName1(String optionName1) {
		this.optionName1 = optionName1;
	}

	public String getOptionName2() {
		return optionName2;
	}

	public void setOptionName2(String optionName2) {
		this.optionName2 = optionName2;
	}

	public String getOptionName3() {
		return optionName3;
	}

	public void setOptionName3(String optionName3) {
		this.optionName3 = optionName3;
	}

	public String getOptionName4() {
		return optionName4;
	}

	public void setOptionName4(String optionName4) {
		this.optionName4 = optionName4;
	}

	public String getOptionName5() {
		return optionName5;
	}

	public void setOptionName5(String optionName5) {
		this.optionName5 = optionName5;
	}

	public String getOption1() {
		return option1;
	}

	public void setOption1(String option1) {
		this.option1 = option1;
	}

	public String getOption2() {
		return option2;
	}

	public void setOption2(String option2) {
		this.option2 = option2;
	}

	public String getOption3() {
		return option3;
	}

	public void setOption3(String option3) {
		this.option3 = option3;
	}

	public String getOption4() {
		return option4;
	}

	public void setOption4(String option4) {
		this.option4 = option4;
	}

	public String getOption5() {
		return option5;
	}

	public void setOption5(String option5) {
		this.option5 = option5;
	}

	public Integer getOptionPrice() {
		return optionPrice;
	}

	public void setOptionPrice(Integer optionPrice) {
		this.optionPrice = optionPrice;
	}

	public Integer getOptionCount() {
		return optionCount;
	}

	public void setOptionCount(Integer optionCount) {
		this.optionCount = optionCount;
	}

	private String delivery_purchaser_name;
	private String delivery_purchaser_phone;

	public String getDelivery_purchaser_name() {
		return delivery_purchaser_name;
	}

	public void setDelivery_purchaser_name(String delivery_purchaser_name) {
		this.delivery_purchaser_name = delivery_purchaser_name;
	}

	public String getDelivery_purchaser_phone() {
		return delivery_purchaser_phone;
	}

	public void setDelivery_purchaser_phone(String delivery_purchaser_phone) {
		this.delivery_purchaser_phone = delivery_purchaser_phone;
	}

	private List<Map<String,Object>> optionList;

	public List<Map<String, Object>> getOptionList() {
		return optionList;
	}

	public void setOptionList(List<Map<String, Object>> optionList) {
		this.optionList = optionList;
	}
}
