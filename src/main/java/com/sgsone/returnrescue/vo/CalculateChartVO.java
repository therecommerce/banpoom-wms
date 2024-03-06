package com.sgsone.returnrescue.vo;


public class CalculateChartVO{

    private Integer cal_price;
    private Integer sell_price;
    private Integer commission;
    private String chart_date;

    public Integer getCal_price() {
        return cal_price;
    }

    public void setCal_price(Integer cal_price) {
        this.cal_price = cal_price;
    }

    public Integer getSell_price() {
        return sell_price;
    }

    public void setSell_price(Integer sell_price) {
        this.sell_price = sell_price;
    }

    public Integer getCommission() {
        return commission;
    }

    public void setCommission(Integer commission) {
        this.commission = commission;
    }

    public String getChart_date() {
        return chart_date;
    }

    public void setChart_date(String chart_date) {
        this.chart_date = chart_date;
    }
}
