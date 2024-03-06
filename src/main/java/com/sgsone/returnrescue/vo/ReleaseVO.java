package com.sgsone.returnrescue.vo;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.sgsone.returnrescue.util.Aes128;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class ReleaseVO {

	private String aes_key = Aes128.DEFAULT_KEY;
	private String account_id;
	private String tracking_no;
	private long file_id;
	private String file_state;

	public String getAes_key() {
		return aes_key;
	}

	public void setAes_key(String aes_key) {
		this.aes_key = aes_key;
	}

	public String getAccount_id() {
		return account_id;
	}

	public void setAccount_id(String account_id) {
		this.account_id = account_id;
	}

	public String getTracking_no() {
		return tracking_no;
	}

	public void setTracking_no(String tracking_no) {
		this.tracking_no = tracking_no;
	}

	public long getFile_id() {
		return file_id;
	}

	public void setFile_id(long file_id) {
		this.file_id = file_id;
	}

	public String getFile_state() {
		return file_state;
	}

	public void setFile_state(String file_state) {
		this.file_state = file_state;
	}
}
