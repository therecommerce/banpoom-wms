package com.sgsone.returnrescue.vo.rest;

import java.util.List;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;

@JsonSerialize(include=JsonSerialize.Inclusion.NON_NULL)
public class RestEventListVO {
	
	private String biowave_id;
	
	private String sensor_status;
	
	private String network_status;

	public String getBiowave_id() {
		return biowave_id;
	}

	public void setBiowave_id(String biowave_id) {
		this.biowave_id = biowave_id;
	}

	public String getSensor_status() {
		return sensor_status;
	}

	public void setSensor_status(String sensor_status) {
		this.sensor_status = sensor_status;
	}

	public String getNetwork_status() {
		return network_status;
	}

	public void setNetwork_status(String network_status) {
		this.network_status = network_status;
	}
}
