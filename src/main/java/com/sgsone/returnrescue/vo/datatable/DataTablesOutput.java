package com.sgsone.returnrescue.vo.datatable;


import java.util.Collections;
import java.util.List;

public class DataTablesOutput<T> {

	private int draw;
	
	private long recordsTotal;
	
	private long recordsFiltered;
	
	private List<T> data = Collections.emptyList();
	
	private SearchPanes searchPanes;
	
	private String error;

	public int getDraw() {
		return draw;
	}
	
	public void setDraw(int draw) {
		this.draw = draw;
	}
	
	public long getRecordsTotal() {
		return recordsTotal;
	}
	
	public void setRecordsTotal(long recordsTotal) {
		this.recordsTotal = recordsTotal;
	}
	
	public long getRecordsFiltered() {
		return recordsFiltered;
	}
	
	public void setRecordsFiltered(long recordsFiltered) {
		this.recordsFiltered = recordsFiltered;
	}
	
	public List<T> getData() {
		return data;
	}
	
	public void setData(List<T> data) {
		this.data = data;
	}
	
	public SearchPanes getSearchPanes() {
		return searchPanes;
	}
	
	public void setSearchPanes(SearchPanes searchPanes) {
		this.searchPanes = searchPanes;
	}
	
	public String getError() {
		return error;
	}
	
	public void setError(String error) {
		this.error = error;
	}
}
