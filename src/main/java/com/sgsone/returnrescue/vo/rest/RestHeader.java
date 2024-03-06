package com.sgsone.returnrescue.vo.rest;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.sgsone.returnrescue.vo.ResultCode;

@JsonSerialize(include=JsonSerialize.Inclusion.NON_NULL)
public class RestHeader {
	
	private String client_type;
	
	private String system_token;
	
	private String session_key;
	
	private String result_code = "0000";
	
	private String result_msg = "Success";
	
	public String getClient_type() {
		return client_type;
	}

	public void setClient_type(String client_type) {
		this.client_type = client_type;
	}

	public String getSystem_token() {
		return system_token;
	}

	public void setSystem_token(String system_token) {
		this.system_token = system_token;
	}

	public String getSession_key() {
		return session_key;
	}

	public void setSession_key(String session_key) {
		this.session_key = session_key;
	}

	public String getResult_code() {
		return result_code;
	}

	public void setResult_code(String result_code) {
		this.result_code = result_code;
	}

	public String getResult_msg() {
		return result_msg;
	}

	public void setResult_msg(String result_msg) {
		this.result_msg = result_msg;
	}
	
	public void setResult(ResultCode result) {
		this.result_code = result.getCode();
		this.result_msg = result.getMsg();
	}
}
