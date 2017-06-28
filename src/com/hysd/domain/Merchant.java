package com.hysd.domain;

public class Merchant {
	private Integer mid	;
	private String mobile	;//登陆账号，手机号
	private String pwd	;//密码
	private String name;	//真实名字
	private Integer status;	//1启用，0禁用
	private String faceimg;//	头像

	 
	public Integer getMid() {
		return mid;
	}
	public void setMid(Integer mid) {
		this.mid = mid;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public String getFaceimg() {
		return faceimg;
	}
	public void setFaceimg(String faceimg) {
		this.faceimg = faceimg;
	}
	 
	
	

}
