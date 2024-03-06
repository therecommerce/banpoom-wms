package com.sgsone.returnrescue.vo;

import com.sgsone.returnrescue.util.Aes128;

import java.util.List;

public class CalculateVO extends BaseVO{
    private String cal_dt;
    private String order_name;
    private String product_id;
    private String product_name;
    private int product_price;
    private int product_price_total;
    private int commission;
    private int commission_total;
    private int cal_price;
    private String order_decide_dt;
    private String cal_state;
    private String order_request_dt;
    private String order_request_id;
    private String aes_key = Aes128.DEFAULT_KEY;
    private int cal_price_total;
    private String cal_search_dt1;
    private String cal_search_dt2;
    private String cal_search_dt3;
    private String cal_search_dt4;
    private String cal_search_dt5;
    private String cal_search_dt6;
    private int cal_no;
    private String sell_type;
    private int total_cal_price;
    private int total_product_count;
    private int total_sell_price;
    private String today;
    private String tomorrow;
    private int today_price;
    private int tomorrow_price;
    private int difference_today_yesterday;
    private int difference_tomorrow_today;
    private String account_id;
    private String consumer;
    private String account_name;

    private int product_vprice;
    private int sub_commission;
    private int sell_commission;
    private String cal_id;
    private String depositor;
    private String account_num;
    private String firstDay;
    private String cal_count;
    private String bank_name;
    private String cal_admin;
    private String cal_month_no;
    private String lastDay;
    private Integer cal_vprice;
    private List<String> cal_id_list;
    private int seller_number;
    private int remain_count;
    private int order_product_count;
    private int return_count;
    private int store_count;
    private int release_count;
    private String release_dt;
    private String store_dt;

    private Integer original_price;
    private Integer return_collection_cost; // 반품수거 비용
    private Integer storage_cost;   // 입고보관 비용
    private Integer recovery_cost;  // 고객사회수 비용
    private Integer forwarding_cost;    // 출고 비용
    private Integer offer_management_cost;  // 기부/폐기 비용

    public Integer getOriginal_price() {
        return original_price;
    }

    public void setOriginal_price(Integer original_price) {
        this.original_price = original_price;
    }

    public Integer getReturn_collection_cost() {
        return return_collection_cost;
    }

    public void setReturn_collection_cost(Integer return_collection_cost) {
        this.return_collection_cost = return_collection_cost;
    }

    public Integer getStorage_cost() {
        return storage_cost;
    }

    public void setStorage_cost(Integer storage_cost) {
        this.storage_cost = storage_cost;
    }

    public Integer getRecovery_cost() {
        return recovery_cost;
    }

    public void setRecovery_cost(Integer recovery_cost) {
        this.recovery_cost = recovery_cost;
    }

    public Integer getForwarding_cost() {
        return forwarding_cost;
    }

    public void setForwarding_cost(Integer forwarding_cost) {
        this.forwarding_cost = forwarding_cost;
    }

    public Integer getOffer_management_cost() {
        return offer_management_cost;
    }

    public void setOffer_management_cost(Integer offer_management_cost) {
        this.offer_management_cost = offer_management_cost;
    }

    public int getCal_price_total() {
        return cal_price_total;
    }

    public void setCal_price_total(int cal_price_total) {
        this.cal_price_total = cal_price_total;
    }

    public String getAes_key() {
        return aes_key;
    }

    public void setAes_key(String aes_key) {
        this.aes_key = aes_key;
    }

    public String getCal_dt() {
        return cal_dt;
    }

    public void setCal_dt(String cal_dt) {
        this.cal_dt = cal_dt;
    }

    public String getOrder_name() {
        return order_name;
    }

    public void setOrder_name(String order_name) {
        this.order_name = order_name;
    }

    public String getProduct_id() {
        return product_id;
    }

    public void setProduct_id(String product_id) {
        this.product_id = product_id;
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

    public int getCommission() {
        return commission;
    }

    public void setCommission(int commission) {
        this.commission = commission;
    }

    public int getCal_price() {
        return cal_price;
    }

    public void setCal_price(int cal_price) {
        this.cal_price = cal_price;
    }

    public String getOrder_decide_dt() {
        return order_decide_dt;
    }

    public void setOrder_decide_dt(String order_decide_dt) {
        this.order_decide_dt = order_decide_dt;
    }

    public String getCal_state() {
        return cal_state;
    }

    public void setCal_state(String cal_state) {
        this.cal_state = cal_state;
    }

    public String getOrder_request_dt() {
        return order_request_dt;
    }

    public void setOrder_request_dt(String order_request_dt) {
        this.order_request_dt = order_request_dt;
    }

    public String getOrder_request_id() {
        return order_request_id;
    }

    public void setOrder_request_id(String order_request_id) {
        this.order_request_id = order_request_id;
    }

    public String getCal_search_dt1() {
        return cal_search_dt1;
    }

    public void setCal_search_dt1(String cal_search_dt1) {
        this.cal_search_dt1 = cal_search_dt1;
    }

    public String getCal_search_dt2() {
        return cal_search_dt2;
    }

    public void setCal_search_dt2(String cal_search_dt2) {
        this.cal_search_dt2 = cal_search_dt2;
    }

    public String getCal_search_dt3() {
        return cal_search_dt3;
    }

    public void setCal_search_dt3(String cal_search_dt3) {
        this.cal_search_dt3 = cal_search_dt3;
    }

    public String getCal_search_dt4() {
        return cal_search_dt4;
    }

    public void setCal_search_dt4(String cal_search_dt4) {
        this.cal_search_dt4 = cal_search_dt4;
    }

    public String getCal_search_dt5() {
        return cal_search_dt5;
    }

    public void setCal_search_dt5(String cal_search_dt5) {
        this.cal_search_dt5 = cal_search_dt5;
    }

    public String getCal_search_dt6() {
        return cal_search_dt6;
    }

    public void setCal_search_dt6(String cal_search_dt6) {
        this.cal_search_dt6 = cal_search_dt6;
    }

    public int getCommission_total() {
        return commission_total;
    }

    public void setCommission_total(int commission_total) {
        this.commission_total = commission_total;
    }

    public int getProduct_price_total() {
        return product_price_total;
    }

    public void setProduct_price_total(int product_price_total) {
        this.product_price_total = product_price_total;
    }

    public int getCal_no() {
        return cal_no;
    }

    public void setCal_no(int cal_no) {
        this.cal_no = cal_no;
    }

    public String getSell_type() {
        return sell_type;
    }

    public void setSell_type(String sell_type) {
        this.sell_type = sell_type;
    }

    public int getTotal_cal_price() {
        return total_cal_price;
    }

    public void setTotal_cal_price(int total_cal_price) {
        this.total_cal_price = total_cal_price;
    }

    public int getTotal_product_count() {
        return total_product_count;
    }

    public void setTotal_product_count(int total_product_count) {
        this.total_product_count = total_product_count;
    }

    public int getTotal_sell_price() {
        return total_sell_price;
    }

    public void setTotal_sell_price(int total_sell_price) {
        this.total_sell_price = total_sell_price;
    }

    public String getToday() {
        return today;
    }

    public void setToday(String today) {
        this.today = today;
    }

    public String getTomorrow() {
        return tomorrow;
    }

    public void setTomorrow(String tomorrow) {
        this.tomorrow = tomorrow;
    }

    public int getToday_price() {
        return today_price;
    }

    public void setToday_price(int today_price) {
        this.today_price = today_price;
    }

    public int getTomorrow_price() {
        return tomorrow_price;
    }

    public void setTomorrow_price(int tomorrow_price) {
        this.tomorrow_price = tomorrow_price;
    }

    public int getDifference_today_yesterday() {
        return difference_today_yesterday;
    }

    public void setDifference_today_yesterday(int difference_today_yesterday) {
        this.difference_today_yesterday = difference_today_yesterday;
    }

    public int getDifference_tomorrow_today() {
        return difference_tomorrow_today;
    }

    public void setDifference_tomorrow_today(int difference_tomorrow_today) {
        this.difference_tomorrow_today = difference_tomorrow_today;
    }

    @Override
    public String getAccount_id() {
        return account_id;
    }

    @Override
    public void setAccount_id(String account_id) {
        this.account_id = account_id;
    }

    public String getConsumer() {
        return consumer;
    }

    public void setConsumer(String consumer) {
        this.consumer = consumer;
    }

    public String getAccount_name() {
        return account_name;
    }

    public void setAccount_name(String account_name) {
        this.account_name = account_name;
    }

    public int getProduct_vprice() {
        return product_vprice;
    }

    public void setProduct_vprice(int product_vprice) {
        this.product_vprice = product_vprice;
    }

    public int getSub_commission() {
        return sub_commission;
    }

    public void setSub_commission(int sub_commission) {
        this.sub_commission = sub_commission;
    }

    public int getSell_commission() {
        return sell_commission;
    }

    public void setSell_commission(int sell_commission) {
        this.sell_commission = sell_commission;
    }

    public String getCal_id() {
        return cal_id;
    }

    public void setCal_id(String cal_id) {
        this.cal_id = cal_id;
    }

    public String getDepositor() {
        return depositor;
    }

    public void setDepositor(String depositor) {
        this.depositor = depositor;
    }

    public String getAccount_num() {
        return account_num;
    }

    public void setAccount_num(String account_num) {
        this.account_num = account_num;
    }

    public String getFirstDay() {
        return firstDay;
    }

    public void setFirstDay(String firstDay) {
        this.firstDay = firstDay;
    }

    public String getCal_count() {
        return cal_count;
    }

    public void setCal_count(String cal_count) {
        this.cal_count = cal_count;
    }

    public String getBank_name() {
        return bank_name;
    }

    public void setBank_name(String bank_name) {
        this.bank_name = bank_name;
    }

    public String getCal_admin() {
        return cal_admin;
    }

    public void setCal_admin(String cal_admin) {
        this.cal_admin = cal_admin;
    }

    public String getCal_month_no() {
        return cal_month_no;
    }

    public void setCal_month_no(String cal_month_no) {
        this.cal_month_no = cal_month_no;
    }

    public String getLastDay() {
        return lastDay;
    }

    public void setLastDay(String lastDay) {
        this.lastDay = lastDay;
    }

    public Integer getCal_vprice() {
        return cal_vprice;
    }

    public void setCal_vprice(Integer cal_vprice) {
        this.cal_vprice = cal_vprice;
    }

    public List<String> getCal_id_list() {
        return cal_id_list;
    }

    public void setCal_id_list(List<String> cal_id_list) {
        this.cal_id_list = cal_id_list;
    }

    public int getSeller_number() {
        return seller_number;
    }

    public void setSeller_number(int seller_number) {
        this.seller_number = seller_number;
    }

    public int getRemain_count() {
        return remain_count;
    }

    public void setRemain_count(int remain_count) {
        this.remain_count = remain_count;
    }

    public int getOrder_product_count() {
        return order_product_count;
    }

    public void setOrder_product_count(int order_product_count) {
        this.order_product_count = order_product_count;
    }

    public int getReturn_count() {
        return return_count;
    }

    public void setReturn_count(int return_count) {
        this.return_count = return_count;
    }

    public int getStore_count() {
        return store_count;
    }

    public void setStore_count(int store_count) {
        this.store_count = store_count;
    }

    public int getRelease_count() {
        return release_count;
    }

    public void setRelease_count(int release_count) {
        this.release_count = release_count;
    }

    public String getRelease_dt() {
        return release_dt;
    }

    public void setRelease_dt(String release_dt) {
        this.release_dt = release_dt;
    }

    public String getStore_dt() {
        return store_dt;
    }

    public void setStore_dt(String store_dt) {
        this.store_dt = store_dt;
    }

    private String this_month_cal_date;
    private Integer this_month_cal_price;
    private Integer deffrent_this_month_price;
    private String next_month_cal_date;
    private Integer next_month_cal_price;
    private Integer deffrent_next_month_price;

    public String getThis_month_cal_date() {
        return this_month_cal_date;
    }

    public void setThis_month_cal_date(String this_month_cal_date) {
        this.this_month_cal_date = this_month_cal_date;
    }

    public Integer getThis_month_cal_price() {
        return this_month_cal_price;
    }

    public void setThis_month_cal_price(Integer this_month_cal_price) {
        this.this_month_cal_price = this_month_cal_price;
    }

    public Integer getDeffrent_this_month_price() {
        return deffrent_this_month_price;
    }

    public void setDeffrent_this_month_price(Integer deffrent_this_month_price) {
        this.deffrent_this_month_price = deffrent_this_month_price;
    }

    public String getNext_month_cal_date() {
        return next_month_cal_date;
    }

    public void setNext_month_cal_date(String next_month_cal_date) {
        this.next_month_cal_date = next_month_cal_date;
    }

    public Integer getNext_month_cal_price() {
        return next_month_cal_price;
    }

    public void setNext_month_cal_price(Integer next_month_cal_price) {
        this.next_month_cal_price = next_month_cal_price;
    }

    public Integer getDeffrent_next_month_price() {
        return deffrent_next_month_price;
    }

    public void setDeffrent_next_month_price(Integer deffrent_next_month_price) {
        this.deffrent_next_month_price = deffrent_next_month_price;
    }

    private Integer seller_count;

    public Integer getSeller_count() {
        return seller_count;
    }

    public void setSeller_count(Integer seller_count) {
        this.seller_count = seller_count;
    }

    public Integer chartIndex;

    public Integer getChartIndex() {
        return chartIndex;
    }

    public void setChartIndex(Integer chartIndex) {
        this.chartIndex = chartIndex;
    }

    private String seller_id;

    public String getSeller_id() {
        return seller_id;
    }

    public void setSeller_id(String seller_id) {
        this.seller_id = seller_id;
    }
}
