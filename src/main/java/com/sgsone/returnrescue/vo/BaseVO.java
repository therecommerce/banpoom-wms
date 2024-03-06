package com.sgsone.returnrescue.vo;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang.StringUtils;

import com.sgsone.returnrescue.util.Aes128;
import com.sgsone.returnrescue.util.Utils;
import com.sgsone.returnrescue.vo.datatable.Column;
import com.sgsone.returnrescue.vo.datatable.DataTablesInput;
import com.sgsone.returnrescue.vo.datatable.Order;

public class BaseVO implements Serializable {

	private static final long serialVersionUID = -1736373917026657021L;

	private String tbl_seq;

	private String site_id;

	private String account_id;

	private int firstIndex = 0;					//첫페이지 인덱스

	private int recordCountPerPage = 10;		//페이지당 레코드갯수

    private String order_column;

    private String order_type;

	private int rownum;							//줄번호

	private String searchText;				//검색어

    private String searchId;

    private String searchValue;

	private String start_dt;

	private String end_dt;

    private String reg_dt;

    private String reg_id;

    private String mod_dt;

    private String mod_id;

    private Map<String, Object> searchMap = new HashMap<String, Object>();

    private String page_mode = "I";     //수정 또는 입력 페이지 전환시 구분을 위해 사용(I: 입력, M:수정)

	private String aes_key = Aes128.DEFAULT_KEY;
	private String date;
	public void setDataTablesInput(DataTablesInput input) {
		this.recordCountPerPage = input.getLength();
		this.firstIndex = input.getStart();

		if(recordCountPerPage > 0) {
			searchMap.put("recordCountPerPage", String.valueOf(recordCountPerPage));
			searchMap.put("firstIndex", String.valueOf(firstIndex));
		}

		if(input.getOrder() != null && input.getOrder().size() > 0) {
			Order order = input.getOrder().get(0);
			order.getColumn();
			// if(order.getColumn() != 0 && input.getColumns() != null && input.getColumns().size() > 0 && input.getColumns().size() > order.getColumn()) {
			if(input.getColumns() != null && input.getColumns().size() > 0 && input.getColumns().size() > order.getColumn()) {
			
				Column col = input.getColumns().get(order.getColumn());
				if(!col.getData().equals("checkbox")){
					searchMap.put("order_column", "t101." + col.getData());
					searchMap.put("order_type", order.getDir());
				}
			}
		}

		for(Column col : input.getColumns()) {
			if(col.getSearch() != null && StringUtils.isNotEmpty(col.getSearch().getValue())) {

				//View단 검색창의 날짜 RANGE SEARCH의 경우, msr_dt 파라미터에
				// YYYY/MM/DD - YYYY/MM/DD 형식으로 저장하기때문에 이 부분에서 분리를 해준다.
				if("msr_dt".equals(col.getData()) || "reg_dt".equals(col.getData()) || "mod_dt".equals(col.getData())) {
					String start_dt = Utils.splitStr(col.getSearch().getValue(), " - ", 0);
					String end_dt = Utils.splitStr(col.getSearch().getValue(), " - ", 1);
					if(start_dt != null && end_dt != null) {
						searchMap.put("start_dt", start_dt + " 00:00:00");
						searchMap.put("end_dt", end_dt + " 23:59:59");
						continue;
					}
				}
				searchMap.put(col.getData(), col.getSearch().getValue());
			}
		}
	}

	public static Map<String, ?> ErrorMap = null;

	public String getTbl_seq() {
		return tbl_seq;
	}

	public void setTbl_seq(String tbl_seq) {
		this.tbl_seq = tbl_seq;
	}

	public String getSite_id() {
		return site_id;
	}

	public void setSite_id(String site_id) {
		this.site_id = site_id;
	}

	public String getAccount_id() {
		return account_id;
	}

	public void setAccount_id(String account_id) {
		this.account_id = account_id;
	}

	public int getFirstIndex() {
		return firstIndex;
	}

	public void setFirstIndex(int firstIndex) {
		this.firstIndex = firstIndex;
	}

	public int getRecordCountPerPage() {
		return recordCountPerPage;
	}

	public void setRecordCountPerPage(int recordCountPerPage) {

		this.recordCountPerPage = recordCountPerPage;
	}

	public String getOrder_column() {
		return order_column;
	}

	public void setOrder_column(String order_column) {
		this.order_column = order_column;
	}

	public String getOrder_type() {
		return order_type;
	}

	public void setOrder_type(String order_type) {
		this.order_type = order_type;
		searchMap.put("order_type", order_type);
	}

	public int getRownum() {
		return rownum;
	}

	public void setRownum(int rownum) {
		this.rownum = rownum;
	}

	public String getSearchText() {
		return searchText;
	}

	public void setSearchText(String searchText) {
		this.searchText = searchText;
	}

	public String getSearchId() {
		return searchId;
	}

	public void setSearchId(String searchId) {
		this.searchId = searchId;
	}

	public String getSearchValue() {
		return searchValue;
	}

	public void setSearchValue(String searchValue) {
		this.searchValue = searchValue;
	}

	public String getStart_dt() {
		return start_dt;
	}

	public void setStart_dt(String start_dt) {
		this.start_dt = start_dt;
	}

	public String getEnd_dt() {
		return end_dt;
	}

	public void setEnd_dt(String end_dt) {
		this.end_dt = end_dt;
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

	public Map<String, Object> getSearchMap() {
		searchMap.put("aes_key", aes_key);
		return searchMap;
	}

	public void setSearchMap(Map<String, Object> searchMap) {
		this.searchMap = searchMap;
	}

	public String getPage_mode() {
		return page_mode;
	}

	public void setPage_mode(String page_mode) {
		this.page_mode = page_mode;
	}

	public static Map<String, ?> getErrorMap() {
		return ErrorMap;
	}

	public static void setErrorMap(Map<String, ?> errorMap) {
		ErrorMap = errorMap;
	}

	public String getAes_key() {
		return aes_key;
	}

	public void setAes_key(String aes_key) {
		this.aes_key = aes_key;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
}

