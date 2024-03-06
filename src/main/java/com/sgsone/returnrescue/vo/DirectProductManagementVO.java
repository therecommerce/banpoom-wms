package com.sgsone.returnrescue.vo;

import java.util.HashMap;
import java.util.List;

public class DirectProductManagementVO extends VoomerangBaseVO {

    private String product_no;
    private String account_name;
    private String account_id;
    private String product_name;
    private int product_price;
    private int product_count;
    private String product_state;
    private String product_selling_dt;
    private int directSaleCount;
    private int directSaleStopCount;
    private int directSoldOutCount;
    private String diffDate;
    private String seller_url;
    private String forwarding_destination_zip;
    private String forwarding_destination_addr1;
    private String forwarding_destination_addr2;
    private String delivery_company;
    private String delivery_type;
    private String delivery_charge;
    private String return_location_zip;
    private String return_location_addr1;
    private String return_location_addr2;
    private String return_charge;
    private List<String> product_id_list;
    private String product_status;
    private String order_delivery_state;
    private Integer delivery_no1;
    private Integer delivery_no;
    private String order_send_name;
    private String order_send_phone;
    private String order_rcv_name;
    private String order_rcv_addr1;
    private String order_rcv_addr2;
    private String order_delivery_dt;
    private String product_option1;
    private int deliveryRequestCount;
    private int deliveryPrepareCount;
    private int onDeliveryCount;
    private int deliveryCompleteCount;
    private int deliveryCancelCount;
    private int returnRequestCount;
    private int holdReturnCount;
    private int returnDeliveryCount;
    private int returnCompleteCount;
    private int returnRefundCompletCount;

    private int paymentCompleteCount;
    private String order_decide_dt;
    private List<Integer> order_request_list;

    private String product_id;
    private String consumer;

    private String cal_admin;
    private int order_product_count;
    private String sell_type;
    private String smartstore_order_no;
    private String smartstore_name;
    private int product_vprice;
    private String order_delivery_company;
    private String tracking_number;
    private String delivery_company_list;
    private String nowTime;
    private String month_code;
    private String cal_month_no;
    private String is_keeping;
    private String pay_complete;
    private String order_request_message;
    private String pay_not_yet;

    private String company_name;
    private String store_name;
    private String seller_name;
    private String company_phone;
    private String wbl_product_name;
    private Integer order_price;
    private String payment_dt;
    private String payment_method;
    private Integer order_product_price;
    private String order_delivery_type;
    private Integer order_delivery_price;
    
    public Integer getOrder_delivery_price() {
        return order_delivery_price;
    }

    public void setOrder_delivery_price(Integer order_delivery_price) {
        this.order_delivery_price = order_delivery_price;
    }

    public Integer getOrder_price() {
        return order_price;
    }

    public void setOrder_price(Integer order_price) {
        this.order_price = order_price;
    }

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

    public Integer getOrder_product_price() {
        return order_product_price;
    }

    public void setOrder_product_price(Integer order_product_price) {
        this.order_product_price = order_product_price;
    }

    public String getOrder_delivery_type() {
        return order_delivery_type;
    }

    public void setOrder_delivery_type(String order_delivery_type) {
        this.order_delivery_type = order_delivery_type;
    }
    public String getWbl_product_name() {
        return wbl_product_name;
    }

    public void setWbl_product_name(String wbl_product_name) {
        this.wbl_product_name = wbl_product_name;
    }

    private List<HistoryVO> history_list;

      public List<HistoryVO> getHistory_list() {
        return history_list;
    }

    public void setHistory_list(List<HistoryVO> history_list) {
        this.history_list = history_list;
    }


    public String getCompany_name() {
        return company_name;
    }

    public void setCompany_name(String company_name) {
        this.company_name = company_name;
    }

     public String getStore_name() {
        return store_name;
    }

    public void setStore_name(String store_name) {
        this.store_name = store_name;
    }

     public String getSeller_name() {
        return seller_name;
    }

    public void setSeller_name(String seller_name) {
        this.seller_name = seller_name;
    }

     public String getCompany_phone() {
        return company_phone;
    }

    public void setCompany_phone(String company_phone) {
        this.company_phone = company_phone;
    }


    public String getPay_not_yet() {
        return pay_not_yet;
    }

    public void setPay_not_yet(String pay_not_yet) {
        this.pay_not_yet = pay_not_yet;
    }

    public String getProduct_no() {
        return product_no;
    }

    public void setProduct_no(String product_no) {
        this.product_no = product_no;
    }

    public String getAccount_name() {
        return account_name;
    }

    public void setAccount_name(String account_name) {
        this.account_name = account_name;
    }

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

    public int getProduct_price() {
        return product_price;
    }

    public void setProduct_price(int product_price) {
        this.product_price = product_price;
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

    public String getProduct_selling_dt() {
        return product_selling_dt;
    }

    public void setProduct_selling_dt(String product_selling_dt) {
        this.product_selling_dt = product_selling_dt;
    }

    public int getDirectSaleCount() {
        return directSaleCount;
    }

    public void setDirectSaleCount(int directSaleCount) {
        this.directSaleCount = directSaleCount;
    }

    public int getDirectSaleStopCount() {
        return directSaleStopCount;
    }

    public void setDirectSaleStopCount(int directSaleStopCount) {
        this.directSaleStopCount = directSaleStopCount;
    }

    public int getDirectSoldOutCount() {
        return directSoldOutCount;
    }

    public void setDirectSoldOutCount(int directSoldOutCount) {
        this.directSoldOutCount = directSoldOutCount;
    }

    public String getDiffDate() {
        return diffDate;
    }

    public void setDiffDate(String diffDate) {
        this.diffDate = diffDate;
    }

    public String getSeller_url() {
        return seller_url;
    }

    public void setSeller_url(String seller_url) {
        this.seller_url = seller_url;
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

    public List<String> getProduct_id_list() {
        return product_id_list;
    }

    public void setProduct_id_list(List<String> product_id_list) {
        this.product_id_list = product_id_list;
    }

    public String getProduct_status() {
        return product_status;
    }

    public void setProduct_status(String product_status) {
        this.product_status = product_status;
    }

    @Override
    public String getOrder_delivery_state() {
        return order_delivery_state;
    }

    @Override
    public void setOrder_delivery_state(String order_delivery_state) {
        this.order_delivery_state = order_delivery_state;
    }

    @Override
    public String getOrder_send_name() {
        return order_send_name;
    }

    @Override
    public void setOrder_send_name(String order_send_name) {
        this.order_send_name = order_send_name;
    }

    @Override
    public String getOrder_send_phone() {
        return order_send_phone;
    }

    @Override
    public void setOrder_send_phone(String order_send_phone) {
        this.order_send_phone = order_send_phone;
    }

    @Override
    public String getOrder_rcv_name() {
        return order_rcv_name;
    }

    @Override
    public void setOrder_rcv_name(String order_rcv_name) {
        this.order_rcv_name = order_rcv_name;
    }

    @Override
    public String getOrder_rcv_addr1() {
        return order_rcv_addr1;
    }

    @Override
    public void setOrder_rcv_addr1(String order_rcv_addr1) {
        this.order_rcv_addr1 = order_rcv_addr1;
    }

    @Override
    public String getOrder_rcv_addr2() {
        return order_rcv_addr2;
    }

    @Override
    public void setOrder_rcv_addr2(String order_rcv_addr2) {
        this.order_rcv_addr2 = order_rcv_addr2;
    }

    @Override
    public String getOrder_delivery_dt() {
        return order_delivery_dt;
    }

    @Override
    public void setOrder_delivery_dt(String order_delivery_dt) {
        this.order_delivery_dt = order_delivery_dt;
    }

    @Override
    public String getProduct_option1() {
        return product_option1;
    }

    @Override
    public void setProduct_option1(String product_option1) {
        this.product_option1 = product_option1;
    }

//    @Override
//    public String getDelivery_no() {
//        return delivery_no;
//    }
//
//    @Override
//    public void setDelivery_no(String delivery_no) {
//        this.delivery_no = delivery_no;
//    }

    public int getDeliveryRequestCount() {
        return deliveryRequestCount;
    }

    public void setDeliveryRequestCount(int deliveryRequestCount) {
        this.deliveryRequestCount = deliveryRequestCount;
    }

    public int getDeliveryPrepareCount() {
        return deliveryPrepareCount;
    }

    public void setDeliveryPrepareCount(int deliveryPrepareCount) {
        this.deliveryPrepareCount = deliveryPrepareCount;
    }

    public int getOnDeliveryCount() {
        return onDeliveryCount;
    }

    public void setOnDeliveryCount(int onDeliveryCount) {
        this.onDeliveryCount = onDeliveryCount;
    }

    public int getDeliveryCompleteCount() {
        return deliveryCompleteCount;
    }

    public void setDeliveryCompleteCount(int deliveryCompleteCount) {
        this.deliveryCompleteCount = deliveryCompleteCount;
    }

    public int getDeliveryCancelCount() {
        return deliveryCancelCount;
    }

    public void setDeliveryCancelCount(int deliveryCancelCount) {
        this.deliveryCancelCount = deliveryCancelCount;
    }

    public int getReturnRequestCount() {
        return returnRequestCount;
    }

    public void setReturnRequestCount(int returnRequestCount) {
        this.returnRequestCount = returnRequestCount;
    }

    public int getHoldReturnCount() {
        return holdReturnCount;
    }

    public void setHoldReturnCount(int holdReturnCount) {
        this.holdReturnCount = holdReturnCount;
    }

    public int getReturnDeliveryCount() {
        return returnDeliveryCount;
    }

    public void setReturnDeliveryCount(int returnDeliveryCount) {
        this.returnDeliveryCount = returnDeliveryCount;
    }

    public int getReturnCompleteCount() {
        return returnCompleteCount;
    }

    public void setReturnCompleteCount(int returnCompleteCount) {
        this.returnCompleteCount = returnCompleteCount;
    }

    public int getReturnRefundCompletCount() {
        return returnRefundCompletCount;
    }

    public void setReturnRefundCompletCount(int returnRefundCompletCount) {
        this.returnRefundCompletCount = returnRefundCompletCount;
    }

    public int getPaymentCompleteCount() {
        return paymentCompleteCount;
    }

    public void setPaymentCompleteCount(int paymentCompleteCount) {
        this.paymentCompleteCount = paymentCompleteCount;
    }

    @Override
    public String getOrder_decide_dt() {
        return order_decide_dt;
    }

    @Override
    public void setOrder_decide_dt(String order_decide_dt) {
        this.order_decide_dt = order_decide_dt;
    }

    public List<Integer> getOrder_request_list() {
        return order_request_list;
    }

    public void setOrder_request_list(List<Integer> order_request_list) {
        this.order_request_list = order_request_list;
    }

    @Override
    public String getProduct_id() {
        return product_id;
    }

    @Override
    public void setProduct_id(String product_id) {
        this.product_id = product_id;
    }

    @Override
    public String getConsumer() {
        return consumer;
    }

    @Override
    public void setConsumer(String consumer) {
        this.consumer = consumer;
    }

    public String getCal_admin() {
        return cal_admin;
    }

    public void setCal_admin(String cal_admin) {
        this.cal_admin = cal_admin;
    }

    @Override
    public int getOrder_product_count() {
        return order_product_count;
    }

    @Override
    public void setOrder_product_count(int order_product_count) {
        this.order_product_count = order_product_count;
    }

    public String getSell_type() {
        return sell_type;
    }

    public void setSell_type(String sell_type) {
        this.sell_type = sell_type;
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

    public int getProduct_vprice() {
        return product_vprice;
    }

    public void setProduct_vprice(int product_vprice) {
        this.product_vprice = product_vprice;
    }

    @Override
    public String getOrder_delivery_company() {
        return order_delivery_company;
    }

    @Override
    public void setOrder_delivery_company(String order_delivery_company) {
        this.order_delivery_company = order_delivery_company;
    }

    @Override
    public String getTracking_number() {
        return tracking_number;
    }

    @Override
    public void setTracking_number(String tracking_number) {
        this.tracking_number = tracking_number;
    }

    public String getDelivery_company_list() {
        return delivery_company_list;
    }

    public void setDelivery_company_list(String delivery_company_list) {
        this.delivery_company_list = delivery_company_list;
    }

    public String getNowTime() {
        return nowTime;
    }

    public void setNowTime(String nowTime) {
        this.nowTime = nowTime;
    }

    public String getMonth_code() {
        return month_code;
    }

    public void setMonth_code(String month_code) {
        this.month_code = month_code;
    }

    public String getCal_month_no() {
        return cal_month_no;
    }

    public void setCal_month_no(String cal_month_no) {
        this.cal_month_no = cal_month_no;
    }

    public String getIs_keeping() {
        return is_keeping;
    }

    public void setIs_keeping(String is_keeping) {
        this.is_keeping = is_keeping;
    }

    public Integer getDelivery_no1() {
        return delivery_no1;
    }

    public void setDelivery_no1(Integer delivery_no1) {
        this.delivery_no1 = delivery_no1;
    }

    public String getPay_complete() {
        return pay_complete;
    }

    public void setPay_complete(String pay_complete) {
        this.pay_complete = pay_complete;
    }

    @Override
    public Integer getDelivery_no() {
        return delivery_no;
    }

    @Override
    public void setDelivery_no(Integer delivery_no) {
        this.delivery_no = delivery_no;
    }

    @Override
    public String getOrder_request_message() {
        return order_request_message;
    }

    @Override
    public void setOrder_request_message(String order_request_message) {
        this.order_request_message = order_request_message;
    }

    private boolean tracking_number_registe_flag;

    public boolean isTracking_number_registe_flag() {
        return tracking_number_registe_flag;
    }

    public void setTracking_number_registe_flag(boolean tracking_number_registe_flag) {
        this.tracking_number_registe_flag = tracking_number_registe_flag;
    }

    private List<String> order_delivery_company_list;
    private List<String> tracking_number_list;
    private List<HashMap<String, Object>> delivery_list;

    public List<String> getOrder_delivery_company_list() {
        return order_delivery_company_list;
    }

    public void setOrder_delivery_company_list(List<String> order_delivery_company_list) {
        this.order_delivery_company_list = order_delivery_company_list;
    }

    public List<String> getTracking_number_list() {
        return tracking_number_list;
    }

    public void setTracking_number_list(List<String> tracking_number_list) {
        this.tracking_number_list = tracking_number_list;
    }

    public List<HashMap<String, Object>> getDelivery_list() {
        return delivery_list;
    }

    public void setDelivery_list(List<HashMap<String, Object>> delivery_list) {
        this.delivery_list = delivery_list;
    }

    public List<Integer> return_no_list;

    public List<Integer> getReturn_no_list() {
        return return_no_list;
    }

    public void setReturn_no_list(List<Integer> return_no_list) {
        this.return_no_list = return_no_list;
    }

    public List<String> delivery_state_list;

    public List<String> getDelivery_state_list() {
        return delivery_state_list;
    }

    public void setDelivery_state_list(List<String> delivery_state_list) {
        this.delivery_state_list = delivery_state_list;
    }
}
