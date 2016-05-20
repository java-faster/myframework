package com.pt.entity.page;


public class Page {
	
	Integer pageNo;
	Integer pageSize;
	Integer[] pageNoList;

	public Integer getPageNo() {
		return pageNo;
	}
	public void setPageNo(Integer pageNo) {
		this.pageNo = pageNo;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public Integer[] getPageNoList() {
		return pageNoList;
	}
	public void setPageNoList(Integer[] pageNoList) {
		this.pageNoList = pageNoList;
	}
	
	
}