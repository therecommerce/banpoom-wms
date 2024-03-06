package com.sgsone.returnrescue.vo;

import com.sgsone.returnrescue.util.Aes128;

public class AlarmVO{

    private String account_id;
    private String aes_key = Aes128.DEFAULT_KEY;
    private String alarm_type;
    private boolean grade_fix_alarm;
    private boolean calculate_notification_alarm;
    private boolean marketing_info_alarm;

    private String alarm_state;

    public String getAccount_id() {
        return account_id;
    }

    public void setAccount_id(String account_id) {
        this.account_id = account_id;
    }

    public String getAes_key() {
        return aes_key;
    }

    public void setAes_key(String aes_key) {
        this.aes_key = aes_key;
    }

    public String getAlarm_type() {
        return alarm_type;
    }

    public void setAlarm_type(String alarm_type) {
        this.alarm_type = alarm_type;
    }

    public boolean isGrade_fix_alarm() {
        return grade_fix_alarm;
    }

    public void setGrade_fix_alarm(boolean grade_fix_alarm) {
        this.grade_fix_alarm = grade_fix_alarm;
    }

    public boolean isCalculate_notification_alarm() {
        return calculate_notification_alarm;
    }

    public void setCalculate_notification_alarm(boolean calculate_notification_alarm) {
        this.calculate_notification_alarm = calculate_notification_alarm;
    }

    public boolean isMarketing_info_alarm() {
        return marketing_info_alarm;
    }

    public void setMarketing_info_alarm(boolean marketing_info_alarm) {
        this.marketing_info_alarm = marketing_info_alarm;
    }

    public String getAlarm_state() {
        return alarm_state;
    }

    public void setAlarm_state(String alarm_state) {
        this.alarm_state = alarm_state;
    }
}
