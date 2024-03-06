package com.sgsone.returnrescue.vo;

import java.util.List;

public class ProductListVO extends VoomerangBaseVO {

    private static final long serialVersionUID = 1L;

    private String product_id;

    private String seller;

    private String product_grade;

    private List<String> product_id_list;
    private String order_delivery_state;

    private String pickup_zipcode;
    private String pickup_address1;
    private String pickup_address2;
    private String delivery_type;
    private String delivery_charge;
    private String return_charge;
    private String smartstore_order_no;
    private String smartstore_name;
    private String trackingprint_content;

    public String getPurchaser_phone() {
        return purchaser_phone;
    }

    public void setPurchaser_phone(String purchaser_phone) {
        this.purchaser_phone = purchaser_phone;
    }

    public String getPurchaser_name() {
        return purchaser_name;
    }

    public void setPurchaser_name(String purchaser_name) {
        this.purchaser_name = purchaser_name;
    }

    private String purchaser_phone;
    private String purchaser_name;
    public String getPickup_zipcode() {
        return pickup_zipcode;
    }

    public void setPickup_zipcode(String pickup_zipcode) {
        this.pickup_zipcode = pickup_zipcode;
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


    public String getOrder_delivery_state() {
        return order_delivery_state;
    }

    public void setOrder_delivery_state(String order_delivery_state) {
        this.order_delivery_state = order_delivery_state;
    }

    public List<String> getProduct_id_list() {
        return product_id_list;
    }

    public void setProduct_id_list(List<String> product_id_list) {
        this.product_id_list = product_id_list;
    }

    @Override
    public int getParent_category_id() {
        return parent_category_id;
    }

    @Override
    public void setParent_category_id(int parent_category_id) {
        this.parent_category_id = parent_category_id;
    }

    private int parent_category_id;
    public String getProduct_id() {
        return product_id;
    }

    public void setProduct_id(String product_id) {
        this.product_id = product_id;
    }

    public String getSeller() {
        return seller;
    }

    public void setSeller(String seller) {
        this.seller = seller;
    }

    public String getProduct_grade() {
        return product_grade;
    }

    public void setProduct_grade(String product_grade) {
        this.product_grade = product_grade;
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

    public int getProduct_visit() {
        return product_visit;
    }

    public void setProduct_visit(int product_visit) {
        this.product_visit = product_visit;
    }

    public String getProduct_soldout_dt() {
        return product_soldout_dt;
    }

    public void setProduct_soldout_dt(String product_soldout_dt) {
        this.product_soldout_dt = product_soldout_dt;
    }

    public String getProduct_selling_dt() {
        return product_selling_dt;
    }

    public void setProduct_selling_dt(String product_selling_dt) {
        this.product_selling_dt = product_selling_dt;
    }

    public Float getProduct_score() {
        return product_score;
    }

    public void setProduct_score(Float product_score) {
        this.product_score = product_score;
    }

    private int product_vprice;

    public int getProduct_vprice() {
        return product_vprice;
    }

    public void setProduct_vprice(int product_vprice) {
        this.product_vprice = product_vprice;
    }

    private int product_price;

    private String product_name;

    private String product_count;

    private int product_visit;

    private String product_soldout_dt;

    private String product_selling_dt;

    private String product_selling_dt1;

    private String product_selling_dt2;

    private String product_selling_dt3;

    private String product_selling_dt4;

    private String product_selling_dt5;

    private String product_selling_dt6;

    private Float product_score;

    private String sell_type;

    private int category_id;

    private String delivery_company;

    private String delivery_number;

    public String getDelivery_company() {
        return delivery_company;
    }

    public void setDelivery_company(String delivery_company) {
        this.delivery_company = delivery_company;
    }

    public String getDelivery_number() {
        return delivery_number;
    }

    public void setDelivery_number(String delivery_number) {
        this.delivery_number = delivery_number;
    }

    public String getProduct_selling_dt1() {
        return product_selling_dt1;
    }

    public void setProduct_selling_dt1(String product_selling_dt1) {
        this.product_selling_dt1 = product_selling_dt1;
    }

    public String getProduct_selling_dt2() {
        return product_selling_dt2;
    }

    public void setProduct_selling_dt2(String product_selling_dt2) {
        this.product_selling_dt2 = product_selling_dt2;
    }

    public String getProduct_selling_dt3() {
        return product_selling_dt3;
    }

    public void setProduct_selling_dt3(String product_selling_dt3) {
        this.product_selling_dt3 = product_selling_dt3;
    }

    public String getProduct_selling_dt4() {
        return product_selling_dt4;
    }

    public void setProduct_selling_dt4(String product_selling_dt4) {
        this.product_selling_dt4 = product_selling_dt4;
    }

    public String getProduct_selling_dt5() {
        return product_selling_dt5;
    }

    public void setProduct_selling_dt5(String product_selling_dt5) {
        this.product_selling_dt5 = product_selling_dt5;
    }

    public String getProduct_selling_dt6() {
        return product_selling_dt6;
    }

    public void setProduct_selling_dt6(String product_selling_dt6) {
        this.product_selling_dt6 = product_selling_dt6;
    }

    public String getProduct_status() {
        return product_status;
    }

    public void setProduct_status(String product_status) {
        this.product_status = product_status;
    }

    private String product_status;

    private String maxName;

    private String product_state;

    public String getProduct_state() {
        return product_state;
    }

    public void setProduct_state(String product_state) {
        this.product_state = product_state;
    }

    public String getMaxName() {
        return maxName;
    }

    public void setMaxName(String maxName) {
        this.maxName = maxName;
    }

    public String getMediumName() {
        return mediumName;
    }

    public void setMediumName(String mediumName) {
        this.mediumName = mediumName;
    }

    public String getMinName() {
        return minName;
    }

    public void setMinName(String minName) {
        this.minName = minName;
    }

    private String mediumName;

    private String minName;

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    public String getSell_type() {
        return sell_type;
    }

    public void setSell_type(String sell_type) {
        this.sell_type = sell_type;
    }

    private int ConsignmentProductCount1;

    private int ConsignmentProductCount2;

    private int ConsignmentProductCount3;

    public int getConsignmentProductCount1() {
        return ConsignmentProductCount1;
    }

    public void setConsignmentProductCount1(int consignmentProductCount1) {
        ConsignmentProductCount1 = consignmentProductCount1;
    }

    public int getConsignmentProductCount2() {
        return ConsignmentProductCount2;
    }

    public void setConsignmentProductCount2(int consignmentProductCount2) {
        ConsignmentProductCount2 = consignmentProductCount2;
    }

    public int getConsignmentProductCount3() {
        return ConsignmentProductCount3;
    }

    public void setConsignmentProductCount3(int consignmentProductCount3) {
        ConsignmentProductCount3 = consignmentProductCount3;
    }

    public int getConsignmentProductCount4() {
        return ConsignmentProductCount4;
    }

    public void setConsignmentProductCount4(int consignmentProductCount4) {
        ConsignmentProductCount4 = consignmentProductCount4;
    }

    public int getConsignmentProductCount5() {
        return ConsignmentProductCount5;
    }

    public void setConsignmentProductCount5(int consignmentProductCount5) {
        ConsignmentProductCount5 = consignmentProductCount5;
    }

    public int getConsignmentProductCount6() {
        return ConsignmentProductCount6;
    }

    public void setConsignmentProductCount6(int consignmentProductCount6) {
        ConsignmentProductCount6 = consignmentProductCount6;
    }

    private int ConsignmentProductCount4;

    private int ConsignmentProductCount5;

    private int ConsignmentProductCount6;

    private String searchProduct;

    public String getSearchProduct() {
        return searchProduct;
    }

    public void setSearchProduct(String searchProduct) {
        this.searchProduct = searchProduct;
    }

    public String getSeller_url() {
        return seller_url;
    }

    public void setSeller_url(String seller_url) {
        this.seller_url = seller_url;
    }

    private String seller_url;

    public String getRegister_type() {
        return register_type;
    }

    public void setRegister_type(String register_type) {
        this.register_type = register_type;
    }

    private String register_type;

    private String diffDate;

    public String getDiffDate() {
        return diffDate;
    }

    public void setDiffDate(String diffDate) {
        this.diffDate = diffDate;
    }

    public String getThirtydays() {
        return thirtydays;
    }

    public void setThirtydays(String thirtydays) {
        this.thirtydays = thirtydays;
    }

    public String getSixtydays() {
        return sixtydays;
    }

    public void setSixtydays(String sixtydays) {
        this.sixtydays = sixtydays;
    }

    private String thirtydays;
    private String sixtydays;

    public String getNinetydays() {
        return ninetydays;
    }

    public int getTenDollaruseFlag() {
        return tenDollaruseFlag;
    }

    public void setTenDollaruseFlag(int tenDollaruseFlag) {
        this.tenDollaruseFlag = tenDollaruseFlag;
    }

    public void setNinetydays(String ninetydays) {
        this.ninetydays = ninetydays;
    }

    private String ninetydays;

    private int tenDollaruseFlag;

    public String getGrade_opinion() {
        return grade_opinion;
    }

    public void setGrade_opinion(String grade_opinion) {
        this.grade_opinion = grade_opinion;
    }

    private String grade_opinion;

    public int getOption_count() {
        return option_count;
    }

    public void setOption_count(int option_count) {
        this.option_count = option_count;
    }

    private int option_count;
    private String category_name;

    @Override
    public String getCategory_name() {
        return category_name;
    }

    @Override
    public void setCategory_name(String category_name) {
        this.category_name = category_name;
    }

    private String diffHours;

    public String getDiffHours() {
        return diffHours;
    }

    public void setDiffHours(String diffHours) {
        this.diffHours = diffHours;
    }

    private String inspection_dt;

    public String getInspection_dt() {
        return inspection_dt;
    }

    public void setInspection_dt(String inspection_dt) {
        this.inspection_dt = inspection_dt;
    }

    public int getProduct_price() {
        return product_price;
    }

    public void setProduct_price(int product_price) {
        this.product_price = product_price;
    }

    private int DirectProductCount1;

    private int DirectProductCount2;

    private int DirectProductCount3;

    public int getDirectProductCount1() {
        return DirectProductCount1;
    }

    public void setDirectProductCount1(int directProductCount1) {
        DirectProductCount1 = directProductCount1;
    }

    public int getDirectProductCount2() {
        return DirectProductCount2;
    }

    public void setDirectProductCount2(int directProductCount2) {
        DirectProductCount2 = directProductCount2;
    }

    public int getDirectProductCount3() {
        return DirectProductCount3;
    }

    public void setDirectProductCount3(int directProductCount3) {
        DirectProductCount3 = directProductCount3;
    }

    private String change_type;

    private String change_price;

    private String change_percent;

    private String change_dt;

    public String getChange_dt() {
        return change_dt;
    }

    public void setChange_dt(String change_dt) {
        this.change_dt = change_dt;
    }

    public String getChange_type() {
        return change_type;
    }

    public void setChange_type(String change_type) {
        this.change_type = change_type;
    }

    public String getChange_price() {
        return change_price;
    }

    public void setChange_price(String change_price) {
        this.change_price = change_price;
    }

    public String getChange_percent() {
        return change_percent;
    }

    public void setChange_percent(String change_percent) {
        this.change_percent = change_percent;
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

    public String getReturn_charge() {
        return return_charge;
    }

    public void setReturn_charge(String return_charge) {
        this.return_charge = return_charge;
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

    public String getTrackingprint_content() {
        return trackingprint_content;
    }

    public void setTrackingprint_content(String trackingprint_content) {
        this.trackingprint_content = trackingprint_content;
    }

    private List<Integer> file_id_list;

    public List<Integer> getFile_id_list() {
        return file_id_list;
    }

    public void setFile_id_list(List<Integer> file_id_list) {
        this.file_id_list = file_id_list;
    }

    private List<Integer> delivery_no_list;

    @Override
    public List<Integer> getDelivery_no_list() {
        return delivery_no_list;
    }

    @Override
    public void setDelivery_no_list(List<Integer> delivery_no_list) {
        this.delivery_no_list = delivery_no_list;
    }

    private List<String> tracking_number_list;

    public List<String> getTracking_number_list() {
        return tracking_number_list;
    }

    public void setTracking_number_list(List<String> tracking_number_list) {
        this.tracking_number_list = tracking_number_list;
    }

    private String delivery_state;

    public String getDelivery_state() {
        return delivery_state;
    }

    public void setDelivery_state(String delivery_state) {
        this.delivery_state = delivery_state;
    }

    private List<String> reg_dt_list;

    public List<String> getReg_dt_list() {
        return reg_dt_list;
    }

    public void setReg_dt_list(List<String> reg_dt_list) {
        this.reg_dt_list = reg_dt_list;
    }

    private String payment_dt;
    private String payment_method;

    public String getPayment_dt() {
        return payment_dt;
    }

    public void setPayment_dt(String payment_dt) {
        this.payment_dt = payment_dt;
    }

    public String getPayment_method() {
        return payment_method;
    }

    public void setPayment_method(String payment_method) {
        this.payment_method = payment_method;
    }
}
