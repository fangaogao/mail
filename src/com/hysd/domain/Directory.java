package com.hysd.domain;

import java.util.HashSet;
import java.util.Set;

public class Directory {
	private Integer did;
	private String cname;//	目录名称
	private Integer cts;//	创建时间戳
	private Integer status;//	1启用，0禁用
	private Integer orderby;//	排序，倒序
	private Set<Directory2> directory2 = new HashSet<Directory2>();
	public Integer getDid() {
		return did;
	}
	public void setDid(Integer did) {
		this.did = did;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public Integer getCts() {
		return cts;
	}
	public void setCts(Integer cts) {
		this.cts = cts;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public Integer getOrderby() {
		return orderby;
	}
	public void setOrderby(Integer orderby) {
		this.orderby = orderby;
	}
	public Set<Directory2> getDirectory2() {
		return directory2;
	}
	public void setDirectory2(Set<Directory2> directory2) {
		this.directory2 = directory2;
	}
	 
	
}
