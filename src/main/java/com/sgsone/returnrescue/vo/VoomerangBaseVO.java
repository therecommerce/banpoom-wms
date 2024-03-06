package com.sgsone.returnrescue.vo;

import com.fasterxml.jackson.annotation.JsonIgnore;

import java.util.List;

public class VoomerangBaseVO extends AdminVO {

    private int category_id;
    private int parent_category_id;
    private String category_name;
    private String category_register;
    private String category_register_dt;
    private String category_mod;
    private String category_mod_dt;
    private String product_id;
    private Integer return_request_id;
    private String account_id;
    private String return_request_dt;
    private String return_way;

    public String getReturn_way() {
        return return_way;
    }

    public void setReturn_way(String return_way) {
        this.return_way = return_way;
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

    public String getCategory_name() {
        return category_name;
    }

    public void setCategory_name(String category_name) {
        this.category_name = category_name;
    }

    public String getCategory_register() {
        return category_register;
    }

    public void setCategory_register(String category_register) {
        this.category_register = category_register;
    }

    public String getCategory_register_dt() {
        return category_register_dt;
    }

    public void setCategory_register_dt(String category_register_dt) {
        this.category_register_dt = category_register_dt;
    }

    public String getCategory_mod() {
        return category_mod;
    }

    public void setCategory_mod(String category_mod) {
        this.category_mod = category_mod;
    }

    public String getCategory_mod_dt() {
        return category_mod_dt;
    }

    public void setCategory_mod_dt(String category_mod_dt) {
        this.category_mod_dt = category_mod_dt;
    }

    public String getProduct_id() {
        return product_id;
    }

    public void setProduct_id(String product_id) {
        this.product_id = product_id;
    }

    public Integer getReturn_request_id() {
        return return_request_id;
    }

    public void setReturn_request_id(Integer return_request_id) {
        this.return_request_id = return_request_id;
    }

    public String getAccount_id() {
        return account_id;
    }

    public void setAccount_id(String account_id) {
        this.account_id = account_id;
    }

    public String getReturn_request_dt() {
        return return_request_dt;
    }

    public void setReturn_request_dt(String return_request_dt) {
        this.return_request_dt = return_request_dt;
    }

    public int getReturn_product_count() {
        return return_product_count;
    }

    public void setReturn_product_count(int return_product_count) {
        this.return_product_count = return_product_count;
    }

    public String getReturn_reason() {
        return return_reason;
    }

    public void setReturn_reason(String return_reason) {
        this.return_reason = return_reason;
    }

    public String getReturn_state() {
        return return_state;
    }

    public void setReturn_state(String return_state) {
        this.return_state = return_state;
    }

    public String getReturn_decide_dt() {
        return return_decide_dt;
    }

    public void setReturn_decide_dt(String return_decide_dt) {
        this.return_decide_dt = return_decide_dt;
    }

    public String getReturn_cancel_reason() {
        return return_cancel_reason;
    }

    public void setReturn_cancel_reason(String return_cancel_reason) {
        this.return_cancel_reason = return_cancel_reason;
    }

    public String getReturn_request_message() {
        return return_request_message;
    }

    public void setReturn_request_message(String return_request_message) {
        this.return_request_message = return_request_message;
    }

    public int getOrder_request_id() {
        return order_request_id;
    }

    public void setOrder_request_id(int order_request_id) {
        this.order_request_id = order_request_id;
    }

    public String getOrder_request_dt() {
        return order_request_dt;
    }

    public void setOrder_request_dt(String order_request_dt) {
        this.order_request_dt = order_request_dt;
    }

    public int getOrder_product_count() {
        return order_product_count;
    }

    public void setOrder_product_count(int order_product_count) {
        this.order_product_count = order_product_count;
    }

    public String getOrder_state() {
        return order_state;
    }

    public void setOrder_state(String order_state) {
        this.order_state = order_state;
    }

    public String getOrder_decide_dt() {
        return order_decide_dt;
    }

    public void setOrder_decide_dt(String order_decide_dt) {
        this.order_decide_dt = order_decide_dt;
    }

    public String getOrder_cancel_reason() {
        return order_cancel_reason;
    }

    public void setOrder_cancel_reason(String order_cancel_reason) {
        this.order_cancel_reason = order_cancel_reason;
    }

    public String getOrder_request_message() {
        return order_request_message;
    }

    public void setOrder_request_message(String order_request_message) {
        this.order_request_message = order_request_message;
    }

    private int return_product_count;
    private String return_reason;
    private String return_state;
    private String tracking_number;
    private String return_decide_dt;

    public String getTracking_number() {
        return tracking_number;
    }

    public void setTracking_number(String tracking_number) {
        this.tracking_number = tracking_number;
    }

    private String return_cancel_reason;
    private String return_request_message;
    private int order_request_id;
    private String order_request_dt;
    private int order_product_count;
    private String order_state;
    private String order_decide_dt;
    private String order_delivery_dt;
    private String order_cancel_reason;
    private String order_request_message;
    @JsonIgnore
    private Integer delivery_no;
    private String order_delivery_no;
    private String return_delivery_no;

    public String getOrder_delivery_no() {
        return order_delivery_no;
    }

    public void setOrder_delivery_no(String order_delivery_no) {
        this.order_delivery_no = order_delivery_no;
    }

    public String getReturn_delivery_no() {
        return return_delivery_no;
    }

    public void setReturn_delivery_no(String return_delivery_no) {
        this.return_delivery_no = return_delivery_no;
    }

    public List<Integer> getDelivery_no_list() {
        return delivery_no_list;
    }

    public void setDelivery_no_list(List<Integer> delivery_no_list) {
        this.delivery_no_list = delivery_no_list;
    }

    private List<Integer> delivery_no_list;
    private String return_delivery_company;
    private String return_delivery_state;
    private String return_postman;
    private String return_send_name;
    private String return_delivery_dt;

    private int DeliveryProductCount1;
    private int DeliveryProductCount2;
    private int DeliveryProductCount3;
    private int DeliveryProductCount4;
    private int DeliveryProductCount5;

    private int ReturnProductCount1;
    private int ReturnProductCount2;
    private int ReturnProductCount3;
    private int ReturnProductCount4;
    private int ReturnProductCount5;

    public int getDeliveryProductCount1() {
        return DeliveryProductCount1;
    }

    public void setDeliveryProductCount1(int deliveryProductCount1) {
        DeliveryProductCount1 = deliveryProductCount1;
    }

    public int getDeliveryProductCount2() {
        return DeliveryProductCount2;
    }

    public void setDeliveryProductCount2(int deliveryProductCount2) {
        DeliveryProductCount2 = deliveryProductCount2;
    }

    public int getDeliveryProductCount3() {
        return DeliveryProductCount3;
    }

    public void setDeliveryProductCount3(int deliveryProductCount3) {
        DeliveryProductCount3 = deliveryProductCount3;
    }

    public int getDeliveryProductCount4() {
        return DeliveryProductCount4;
    }

    public void setDeliveryProductCount4(int deliveryProductCount4) {
        DeliveryProductCount4 = deliveryProductCount4;
    }

    public int getDeliveryProductCount5() {
        return DeliveryProductCount5;
    }

    public void setDeliveryProductCount5(int deliveryProductCount5) {
        DeliveryProductCount5 = deliveryProductCount5;
    }

    public int getReturnProductCount1() {
        return ReturnProductCount1;
    }

    public void setReturnProductCount1(int returnProductCount1) {
        ReturnProductCount1 = returnProductCount1;
    }

    public int getReturnProductCount2() {
        return ReturnProductCount2;
    }

    public void setReturnProductCount2(int returnProductCount2) {
        ReturnProductCount2 = returnProductCount2;
    }

    public int getReturnProductCount3() {
        return ReturnProductCount3;
    }

    public void setReturnProductCount3(int returnProductCount3) {
        ReturnProductCount3 = returnProductCount3;
    }

    public int getReturnProductCount4() {
        return ReturnProductCount4;
    }

    public void setReturnProductCount4(int returnProductCount4) {
        ReturnProductCount4 = returnProductCount4;
    }

    public int getReturnProductCount5() {
        return ReturnProductCount5;
    }

    public void setReturnProductCount5(int returnProductCount5) {
        ReturnProductCount5 = returnProductCount5;
    }

    public String getReturn_delivery_dt() {
        return return_delivery_dt;
    }

    public void setReturn_delivery_dt(String return_delivery_dt) {
        this.return_delivery_dt = return_delivery_dt;
    }

    public String getOrder_delivery_dt() {
        return order_delivery_dt;
    }

    public void setOrder_delivery_dt(String order_delivery_dt) {
        this.order_delivery_dt = order_delivery_dt;
    }

//    public String getDelivery_no() {
//        return delivery_no;
//    }
//
//    public void setDelivery_no(String delivery_no) {
//        this.delivery_no = delivery_no;
//    }


    public Integer getDelivery_no() {
        return delivery_no;
    }

    public void setDelivery_no(Integer delivery_no) {
        this.delivery_no = delivery_no;
    }

    public String getReturn_delivery_company() {
        return return_delivery_company;
    }

    public void setReturn_delivery_company(String return_delivery_company) {
        this.return_delivery_company = return_delivery_company;
    }

    public String getReturn_delivery_state() {
        return return_delivery_state;
    }

    public void setReturn_delivery_state(String return_delivery_state) {
        this.return_delivery_state = return_delivery_state;
    }

    public String getReturn_postman() {
        return return_postman;
    }

    public void setReturn_postman(String return_postman) {
        this.return_postman = return_postman;
    }

    public String getReturn_send_name() {
        return return_send_name;
    }

    public void setReturn_send_name(String return_send_name) {
        this.return_send_name = return_send_name;
    }

    public String getReturn_send_phone() {
        return return_send_phone;
    }

    public void setReturn_send_phone(String return_send_phone) {
        this.return_send_phone = return_send_phone;
    }

    public int getReturn_send_zip() {
        return return_send_zip;
    }

    public void setReturn_send_zip(int return_send_zip) {
        this.return_send_zip = return_send_zip;
    }

    public String getReturn_send_addr1() {
        return return_send_addr1;
    }

    public void setReturn_send_addr1(String return_send_addr1) {
        this.return_send_addr1 = return_send_addr1;
    }

    public String getReturn_send_addr2() {
        return return_send_addr2;
    }

    public void setReturn_send_addr2(String return_send_addr2) {
        this.return_send_addr2 = return_send_addr2;
    }

    public String getReturn_rcv_name() {
        return return_rcv_name;
    }

    public void setReturn_rcv_name(String return_rcv_name) {
        this.return_rcv_name = return_rcv_name;
    }

    public String getReturn_rcv_phone() {
        return return_rcv_phone;
    }

    public void setReturn_rcv_phone(String return_rcv_phone) {
        this.return_rcv_phone = return_rcv_phone;
    }

    public int getReturn_rcv_zip() {
        return return_rcv_zip;
    }

    public void setReturn_rcv_zip(int return_rcv_zip) {
        this.return_rcv_zip = return_rcv_zip;
    }

    public String getReturn_rcv_addr1() {
        return return_rcv_addr1;
    }

    public void setReturn_rcv_addr1(String return_rcv_addr1) {
        this.return_rcv_addr1 = return_rcv_addr1;
    }

    public String getReturn_rcv_addr2() {
        return return_rcv_addr2;
    }

    public void setReturn_rcv_addr2(String return_rcv_addr2) {
        this.return_rcv_addr2 = return_rcv_addr2;
    }

    public String getReturn_delivery_cost() {
        return return_delivery_cost;
    }

    public void setReturn_delivery_cost(String return_delivery_cost) {
        this.return_delivery_cost = return_delivery_cost;
    }

    public String getOrder_delivery_company() {
        return order_delivery_company;
    }

    public void setOrder_delivery_company(String order_delivery_company) {
        this.order_delivery_company = order_delivery_company;
    }

    public String getOrder_delivery_state() {
        return order_delivery_state;
    }

    public void setOrder_delivery_state(String order_delivery_state) {
        this.order_delivery_state = order_delivery_state;
    }

    public String getOrder_postman() {
        return order_postman;
    }

    public void setOrder_postman(String order_postman) {
        this.order_postman = order_postman;
    }

    public String getOrder_send_name() {
        return order_send_name;
    }

    public void setOrder_send_name(String order_send_name) {
        this.order_send_name = order_send_name;
    }

    public String getOrder_send_phone() {
        return order_send_phone;
    }

    public void setOrder_send_phone(String order_send_phone) {
        this.order_send_phone = order_send_phone;
    }

    public String getOrder_send_phone2() {
        return order_send_phone2;
    }

    public void setOrder_send_phone2(String order_send_phone2) {
        this.order_send_phone2 = order_send_phone2;
    }
    public int getOrder_send_zip() {
        return order_send_zip;
    }

    public void setOrder_send_zip(int order_send_zip) {
        this.order_send_zip = order_send_zip;
    }

    public String getOrder_send_addr1() {
        return order_send_addr1;
    }

    public void setOrder_send_addr1(String order_send_addr1) {
        this.order_send_addr1 = order_send_addr1;
    }

    public String getOrder_send_addr2() {
        return order_send_addr2;
    }

    public void setOrder_send_addr2(String order_send_addr2) {
        this.order_send_addr2 = order_send_addr2;
    }

    public String getOrder_rcv_name() {
        return order_rcv_name;
    }

    public void setOrder_rcv_name(String order_rcv_name) {
        this.order_rcv_name = order_rcv_name;
    }

    public String getOrder_rcv_phone() {
        return order_rcv_phone;
    }

    public void setOrder_rcv_phone(String order_rcv_phone) {
        this.order_rcv_phone = order_rcv_phone;
    }

    public String getOrder_rcv_phone2() {
        return order_rcv_phone2;
    }

    public void setOrder_rcv_phone2(String order_rcv_phone2) {
        this.order_rcv_phone2 = order_rcv_phone2;
    }

    public String getOrder_rcv_zip() {
        return order_rcv_zip;
    }

    public void setOrder_rcv_zip(String order_rcv_zip) {
        this.order_rcv_zip = order_rcv_zip;
    }

    public String getOrder_rcv_addr1() {
        return order_rcv_addr1;
    }

    public void setOrder_rcv_addr1(String order_rcv_addr1) {
        this.order_rcv_addr1 = order_rcv_addr1;
    }

    public String getOrder_rcv_addr2() {
        return order_rcv_addr2;
    }

    public void setOrder_rcv_addr2(String order_rcv_addr2) {
        this.order_rcv_addr2 = order_rcv_addr2;
    }

    public String getOrder_delivery_cost() {
        return order_delivery_cost;
    }

    public void setOrder_delivery_cost(String order_delivery_cost) {
        this.order_delivery_cost = order_delivery_cost;
    }

    private String return_send_phone;
    private int return_send_zip;
    private String return_send_addr1;
    private String return_send_addr2;
    private String return_rcv_name;
    private String return_rcv_phone;
    private int return_rcv_zip;
    private String return_rcv_addr1;
    private String return_rcv_addr2;
    private String return_delivery_cost;
    private String order_delivery_company;
    private String order_delivery_state;
    private String order_postman;
    private String order_send_name;
    private String order_send_phone;
    private String order_send_phone2;
    private int order_send_zip;
    private String order_send_addr1;
    private String order_send_addr2;
    private String order_rcv_name;
    private String order_rcv_phone;
    private String order_rcv_phone2;
    private String order_rcv_zip;
    private String order_rcv_addr1;
    private String order_rcv_addr2;
    private String order_delivery_cost;

    private String consumer;

    public String getConsumer() {
        return consumer;
    }

    public void setConsumer(String consumer) {
        this.consumer = consumer;
    }

    public int getCal_state() {
        return cal_state;
    }

    public void setCal_state(int cal_state) {
        this.cal_state = cal_state;
    }

    public int getCommission() {
        return commission;
    }

    public void setCommission(int commission) {
        this.commission = commission;
    }

    public int getPaid_state() {
        return paid_state;
    }

    public void setPaid_state(int paid_state) {
        this.paid_state = paid_state;
    }

    public String getCal_dt() {
        return cal_dt;
    }

    public void setCal_dt(String cal_dt) {
        this.cal_dt = cal_dt;
    }

    private int cal_state;
    private int commission;
    private int paid_state;
    private String cal_dt;

    private int option_id;
    private int parent_option_id;
    private String delivery_option;
    private String product_option1;
    private String product_option2;

    public int getOption_id() {
        return option_id;
    }

    public void setOption_id(int option_id) {
        this.option_id = option_id;
    }

    public int getParent_option_id() {
        return parent_option_id;
    }

    public void setParent_option_id(int parent_option_id) {
        this.parent_option_id = parent_option_id;
    }

    public String getDelivery_option() {
        return delivery_option;
    }

    public void setDelivery_option(String delivery_option) {
        this.delivery_option = delivery_option;
    }

    public String getProduct_option1() {
        return product_option1;
    }

    public void setProduct_option1(String product_option1) {
        this.product_option1 = product_option1;
    }

    public String getProduct_option2() {
        return product_option2;
    }

    public void setProduct_option2(String product_option2) {
        this.product_option2 = product_option2;
    }

    private String consign_reason;

    public String getConsign_reason() {
        return consign_reason;
    }

    public void setConsign_reason(String consign_reason) {
        this.consign_reason = consign_reason;
    }
}
