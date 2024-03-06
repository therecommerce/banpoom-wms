package com.sgsone.returnrescue.vo.rest;

public class RestResponse {
	
	public RestHeader header;
	
	public Object body;

	public RestHeader getHeader() {
		return header;
	}

	public void setHeader(RestHeader header) {
		this.header = header;
	}

	public Object getBody() {
		return body;
	}

	public void setBody(Object body) {
		this.body = body;
	}
}
