package com.hysd.domain;

public class CmgLog {//后台客服操作日志
	private Integer cmid;	
	private String cmts;//	时间
	private String content;//内容
	private Integer type;//	类型
	public Integer getCmid() {
		return cmid;
	}
	public void setCmid(Integer cmid) {
		this.cmid = cmid;
	}
	public String getCmts() {
		return cmts;
	}
	public void setCmts(String cmts) {
		this.cmts = cmts;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}

	 
	 
}
