package com.sgsone.returnrescue.vo.datatable;

import java.util.List;

public class DataTablesInput {
	
    public int draw;
    
    public List<Column> columns;
    
    public List<Order> order;
    
    public int start;
    
    public int length;
    
    public Search search;
    
    public Object customSearch;
	private String date;

	public int getDraw() {
		return draw;
	}

	public void setDraw(int draw) {
		this.draw = draw;
	}

	public List<Column> getColumns() {
		return columns;
	}

	public void setColumns(List<Column> columns) {
		this.columns = columns;
	}

	public List<Order> getOrder() {
		return order;
	}

	public void setOrder(List<Order> order) {
		this.order = order;
	}

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getLength() {
		return length;
	}

	public void setLength(int length) {
		this.length = length;
	}

	public Search getSearch() {
		return search;
	}

	public void setSearch(Search search) {
		this.search = search;
	}

	public Object getCustomSearch() {
		return customSearch;
	}

	public void setCustomSearch(Object customSearch) {
		this.customSearch = customSearch;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
}
