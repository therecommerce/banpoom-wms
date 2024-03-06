package com.sgsone.returnrescue.vo;


public class GradeVO extends BaseVO {

	private static final long serialVersionUID = 1L;
	
	private String grade_id;
	
	private String grade_name;
	
	private String grade_desc;
	
	private String grade_auth_view;
	
	private String grade_auth_setting;
	
	private String grade_type;

	public String getGrade_id() {
		return grade_id;
	}

	public void setGrade_id(String grade_id) {
		this.grade_id = grade_id;
	}

	public String getGrade_name() {
		return grade_name;
	}

	public void setGrade_name(String grade_name) {
		this.grade_name = grade_name;
	}

	public String getGrade_desc() {
		return grade_desc;
	}

	public void setGrade_desc(String grade_desc) {
		this.grade_desc = grade_desc;
	}

	public String getGrade_auth_view() {
		return grade_auth_view;
	}

	public void setGrade_auth_view(String grade_auth_view) {
		this.grade_auth_view = grade_auth_view;
	}

	public String getGrade_auth_setting() {
		return grade_auth_setting;
	}

	public void setGrade_auth_setting(String grade_auth_setting) {
		this.grade_auth_setting = grade_auth_setting;
	}

	public String getGrade_type() {
		return grade_type;
	}

	public void setGrade_type(String grade_type) {
		this.grade_type = grade_type;
	}		
}
