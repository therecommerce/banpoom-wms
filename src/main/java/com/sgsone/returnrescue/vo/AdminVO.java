package com.sgsone.returnrescue.vo;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonInclude;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class AdminVO extends BaseVO {

	private static final long serialVersionUID = 1L;

	private String site_id;

	private String site_name;

	private String company_name;

	private String account_name;

	private String xuser_id;

	private String account_pwd;

	private String grade_id;

	private String gender;

	private String birth;

	private String address1;

	private String address2;

	private String account_email;

	private String account_tel;

	private String account_phone;

	private String account_use_yn;

	private String account_status;

	private String account_hold_yn;

	private String confirm_id;

	private String pushnoti_yn;

//	private int file_id;

	private int pw_error_count;

	private String first_login;

	private String sms_auth_token;

	private String lang_type;

	private String pwchg_dt;

	private String login_status;

	private String user_height;

	private String user_weight;

	private String extrainfo;

	private String prot_name;

	private String prot_phone;

	private String prot_email;

	private String relationship;

	private String reg_dt;

	private String reg_id;

	private String mod_dt;

	private String mod_id;

	private int account_dormant;

	private String last_login;

	private String company_num;
	private String chief_name;
	private String store_name;
	private String store_introduce;
	private String company_zip;
	private String company_addr1;
	private String company_addr2;
	private String company_phone;
	private String company_email;
	private String online_marketing_num;
	private String bank_name;
	private String depositor;
	private String account_num;
	private String business_info_flag;
	private String cal_admin;

	public String getBusiness_info_flag() {
		return business_info_flag;
	}

	public void setBusiness_info_flag(String business_info_flag) {
		this.business_info_flag = business_info_flag;
	}

	public String getCompany_num() {
		return company_num;
	}

	public void setCompany_num(String company_num) {
		this.company_num = company_num;
	}

	public String getChief_name() {
		return chief_name;
	}

	public void setChief_name(String chief_name) {
		this.chief_name = chief_name;
	}

	public String getStore_name() {
		return store_name;
	}

	public void setStore_name(String store_name) {
		this.store_name = store_name;
	}

	public String getStore_introduce() {
		return store_introduce;
	}

	public void setStore_introduce(String store_introduce) {
		this.store_introduce = store_introduce;
	}

	public String getCompany_zip() {
		return company_zip;
	}

	public void setCompany_zip(String company_zip) {
		this.company_zip = company_zip;
	}

	public String getCompany_addr1() {
		return company_addr1;
	}

	public void setCompany_addr1(String company_addr1) {
		this.company_addr1 = company_addr1;
	}

	public String getCompany_addr2() {
		return company_addr2;
	}

	public void setCompany_addr2(String company_addr2) {
		this.company_addr2 = company_addr2;
	}

	public String getCompany_phone() {
		return company_phone;
	}

	public void setCompany_phone(String company_phone) {
		this.company_phone = company_phone;
	}

	public String getCompany_email() {
		return company_email;
	}

	public void setCompany_email(String company_email) {
		this.company_email = company_email;
	}

	public String getOnline_marketing_num() {
		return online_marketing_num;
	}

	public void setOnline_marketing_num(String online_marketing_num) {
		this.online_marketing_num = online_marketing_num;
	}

	public String getBank_name() {
		return bank_name;
	}

	public void setBank_name(String bank_name) {
		this.bank_name = bank_name;
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

	public String getSite_id() {
		return site_id;
	}

	public void setSite_id(String site_id) {
		this.site_id = site_id;
	}

	public String getSite_name() {
		return site_name;
	}

	public void setSite_name(String site_name) {
		this.site_name = site_name;
	}

	public String getCompany_name() {
		return company_name;
	}

	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}

	public String getAccount_name() {
		return account_name;
	}

	public void setAccount_name(String account_name) {
		this.account_name = account_name;
	}


	public String getXuser_id() {
		return xuser_id;
	}

	public void setXuser_id(String xuser_id) {
		this.xuser_id = xuser_id;
	}

	public String getAccount_pwd() {
		return account_pwd;
	}

	public void setAccount_pwd(String account_pwd) {
		this.account_pwd = account_pwd;
	}

	public String getGrade_id() {
		return grade_id;
	}

	public void setGrade_id(String grade_id) {
		this.grade_id = grade_id;
		super.getSearchMap().put("grade_id", grade_id);
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getAccount_email() {
		return account_email;
	}

	public void setAccount_email(String account_email) {
		this.account_email = account_email;
	}

	public String getAccount_tel() {
		return account_tel;
	}

	public void setAccount_tel(String account_tel) {
		this.account_tel = account_tel;
	}

	public String getAccount_phone() {
		return account_phone;
	}

	public void setAccount_phone(String account_phone) {
		this.account_phone = account_phone;
	}

	public String getAccount_use_yn() {
		return account_use_yn;
	}

	public void setAccount_use_yn(String account_use_yn) {
		this.account_use_yn = account_use_yn;
	}

	public String getAccount_status() {
		return account_status;
	}

	public void setAccount_status(String account_status) {
		this.account_status = account_status;
	}

	public String getAccount_hold_yn() {
		return account_hold_yn;
	}

	public void setAccount_hold_yn(String account_hold_yn) {
		this.account_hold_yn = account_hold_yn;
	}

	public String getConfirm_id() {
		return confirm_id;
	}

	public void setConfirm_id(String confirm_id) {
		this.confirm_id = confirm_id;
	}

	public String getPushnoti_yn() {
		return pushnoti_yn;
	}

	public void setPushnoti_yn(String pushnoti_yn) {
		this.pushnoti_yn = pushnoti_yn;
	}

//	public int getFile_id() {
//		return file_id;
//	}
//
//	public void setFile_id(int file_id) {
//		this.file_id = file_id;
//	}


	public int getPw_error_count() {
		return pw_error_count;
	}

	public void setPw_error_count(int pw_error_count) {
		this.pw_error_count = pw_error_count;
	}

	public String getFirst_login() {
		return first_login;
	}

	public void setFirst_login(String first_login) {
		this.first_login = first_login;
	}

	public String getSms_auth_token() {
		return sms_auth_token;
	}

	public void setSms_auth_token(String sms_auth_token) {
		this.sms_auth_token = sms_auth_token;
	}

	public String getLang_type() {
		return lang_type;
	}

	public void setLang_type(String lang_type) {
		this.lang_type = lang_type;
	}

	public String getPwchg_dt() {
		return pwchg_dt;
	}

	public void setPwchg_dt(String pwchg_dt) {
		this.pwchg_dt = pwchg_dt;
	}

	public String getLogin_status() {
		return login_status;
	}

	public void setLogin_status(String login_status) {
		this.login_status = login_status;
	}

	public String getUser_height() {
		return user_height;
	}

	public void setUser_height(String user_height) {
		this.user_height = user_height;
	}

	public String getUser_weight() {
		return user_weight;
	}

	public void setUser_weight(String user_weight) {
		this.user_weight = user_weight;
	}

	public String getExtrainfo() {
		return extrainfo;
	}

	public void setExtrainfo(String extrainfo) {
		this.extrainfo = extrainfo;
	}

	public String getProt_name() {
		return prot_name;
	}

	public void setProt_name(String prot_name) {
		this.prot_name = prot_name;
	}

	public String getProt_phone() {
		return prot_phone;
	}

	public void setProt_phone(String prot_phone) {
		this.prot_phone = prot_phone;
	}

	public String getProt_email() {
		return prot_email;
	}

	public void setProt_email(String prot_email) {
		this.prot_email = prot_email;
	}

	public String getRelationship() {
		return relationship;
	}

	public void setRelationship(String relationship) {
		this.relationship = relationship;
	}

	public String getReg_dt() {
		return reg_dt;
	}

	public void setReg_dt(String reg_dt) {
		this.reg_dt = reg_dt;
	}

	public String getReg_id() {
		return reg_id;
	}

	public void setReg_id(String reg_id) {
		this.reg_id = reg_id;
	}

	public String getMod_dt() {
		return mod_dt;
	}

	public void setMod_dt(String mod_dt) {
		this.mod_dt = mod_dt;
	}

	public String getMod_id() {
		return mod_id;
	}

	public void setMod_id(String mod_id) {
		this.mod_id = mod_id;
	}

	public int getAccount_dormant() {
		return account_dormant;
	}

	public void setAccount_dormant(int account_dormant) {
		this.account_dormant = account_dormant;
	}

	public String getLast_login() {
		return last_login;
	}

	public void setLast_login(String last_login) {
		this.last_login = last_login;
	}

	public String getCal_admin() {
		return cal_admin;
	}

	public void setCal_admin(String cal_admin) {
		this.cal_admin = cal_admin;
	}
}
