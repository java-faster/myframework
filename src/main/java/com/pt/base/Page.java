package com.pt.base;


public class Page {
	
	Integer pageNo;
	Integer pageSize;
	Integer count;
	Integer[] pageNoList;

	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}
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
	
	public void init(int count){
		
		this.count = count;
		int pageMaxNo = count / pageSize;
		if (count % pageSize != 0) {
			pageMaxNo++;
		}
		pageNoList = new Integer[pageMaxNo];
	}
}