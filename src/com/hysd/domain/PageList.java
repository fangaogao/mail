package com.hysd.domain;

import java.util.List;

public class PageList<T> {//分页查询
	private List<T> list;
	private Long count;
	private Integer pages;
	private Integer pageSize;
	
	public List<T> getList() {
		return list;
	}
	public void setList(List<T> list) {
		this.list = list;
	}
	public Long getCount() {
		return count;
	}
	public void setCount(Long count) {
		this.count = count;
	}
	public Integer getPages() {
		return pages;
	}
	public void setPages(Integer pages) {
		this.pages = pages;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	
	public Integer getP(Long count1,Integer pageSize1) {
		int p=new Integer(count1+"")%pageSize1;
		if(p==0)return  new Integer(count1+"")/pageSize1;
		else return new Integer(count1+"")/pageSize1+1; 
	}
	 
	
	 
	
	
}
