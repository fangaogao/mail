package com.hysd.domain;

public class Directory2 {
	private Integer ddid;
	private String cname;//	目录名称
	private Integer cts;//	创建时间戳
	private Integer status;//	1启用，0禁用
	private Integer orderby;//	排序，倒序
	private Directory directory; 
	public Integer getDdid() {
		return ddid;
	}
	public void setDdid(Integer ddid) {
		this.ddid = ddid;
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
	public Directory getDirectory() {
		return directory;
	}
	public void setDirectory(Directory directory) {
		this.directory = directory;
	}
	
	
}
