package com.sgsone.returnrescue.vo.selectbox;

import java.util.List;

public class SelectBoxOutput {
	
	public static final String SUCCESS = "success";
	
	public static final String FAILURE = "fail";
	
	
	private String resultCode;
	
	private List<SelectBoxItem> results;

	public String getResultCode() {
		return resultCode;
	}

	public void setResultCode(String resultCode) {
		this.resultCode = resultCode;
	}

	public List<SelectBoxItem> getResults() {
		return results;
	}

	public void setResults(List<SelectBoxItem> results) {
		this.results = results;
	}
}
