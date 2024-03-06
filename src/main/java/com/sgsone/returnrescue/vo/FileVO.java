package com.sgsone.returnrescue.vo;

public class FileVO {
	private long file_id;

	private String file_name;

	private String file_real_name;

	private String file_path;

	private String file_ext;

	private String file_content_type;

	private long file_size;

	private String reg_dt;

	private long orig_file_id;

	private String file_width;

	private String file_height;

	private String product_id;

	public long getFile_id() {
		return file_id;
	}
	public void setFile_id(long file_id) {
		this.file_id = file_id;
	}
	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}
	public String getFile_real_name() {
		return file_real_name;
	}
	public void setFile_real_name(String file_real_name) {
		this.file_real_name = file_real_name;
	}
	public String getFile_path() {
		return file_path;
	}
	public void setFile_path(String file_path) {
		this.file_path = file_path;
	}
	public String getFile_ext() {
		return file_ext;
	}
	public void setFile_ext(String file_ext) {
		this.file_ext = file_ext;
	}
	public String getFile_content_type() {
		return file_content_type;
	}
	public void setFile_content_type(String file_content_type) {
		this.file_content_type = file_content_type;
	}

	public String getReg_dt() {
		return reg_dt;
	}
	public void setReg_dt(String reg_dt) {
		this.reg_dt = reg_dt;
	}
	public long getFile_size() {
		return file_size;
	}
	public void setFile_size(long file_size) {
		this.file_size = file_size;
	}
	public long getOrig_file_id() {
		return orig_file_id;
	}
	public void setOrig_file_id(long orig_file_id) {
		this.orig_file_id = orig_file_id;
	}
	public String getFile_width() {
		return file_width;
	}
	public void setFile_width(String file_width) {
		this.file_width = file_width;
	}
	public String getFile_height() {
		return file_height;
	}
	public void setFile_height(String file_height) {
		this.file_height = file_height;
	}

	public String getProduct_id() {
		return product_id;
	}

	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}
}
