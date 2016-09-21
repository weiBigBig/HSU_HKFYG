package com.djw.web.common.pager;

import java.io.Serializable;
import java.util.List;

public class Pager<T> implements Serializable{

	private static final long serialVersionUID = 5215862429943590486L;
	
	private int pageSize;//每页显示多少条记录
	
	private int currentPage;//当前第几页数据
	
	private int totalRecord;//一共多少页记录
	
	private int tatalPage;//一共多少页数据
	
	private List<T> dataList;//要显示的数据

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getTotalRecord() {
		return totalRecord;
	}

	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
	}

	public int getTatalPage() {
		return tatalPage;
	}

	public void setTatalPage(int tatalPage) {
		this.tatalPage = tatalPage;
	}

	public List<T> getDataList() {
		return dataList;
	}

	public Pager() {
		super();
	}

	public Pager(int pageSize, int currentPage, int totalRecord, int tatalPage, List<T> dataList) {
		super();
		this.pageSize = pageSize;
		this.currentPage = currentPage;
		this.totalRecord = totalRecord;
		this.tatalPage = tatalPage;
		this.dataList = dataList;
	}

	public void setDataList(List<T> dataList) {
		this.dataList = dataList;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
}
