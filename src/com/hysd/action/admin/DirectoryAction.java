package com.hysd.action.admin;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.springframework.stereotype.Controller;

import com.hysd.cons.Sys;
import com.hysd.domain.Directory;
import com.hysd.domain.PageList;
import com.hysd.service.DirectoryService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@Controller
public class DirectoryAction extends ActionSupport implements ServletRequestAware{
	
	@Resource
	private DirectoryService directoryService; 
	private Directory directory;
	private Integer pageNo;//当前页
	private Integer pageSize;//每页记录数
	private Integer pages;//总页数
	private Long count;//总记录数

	/**
	 * 按条件分页查询所有一级目录
	 * @return
	 */
	public String list(){
		pageNo = (pageNo==null?1:pageNo);
		pageSize = (pageSize==null?Sys.Common.PGGESIZE:pageSize);
		PageList<Directory> pl = directoryService.findAll(pageNo, pageSize, directory);
		if(pl != null){
			requset.setAttribute("directorys", pl.getList());
			this.count = pl.getCount();
			this.pages = pl.getPages();
		}
		return "list";
	}

	 

	
	public Directory getDirectory() {
		return directory;
	}
	
	public void setDirectory(Directory directory) {
		this.directory = directory;
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
	
	HttpServletRequest requset;
	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		this.requset=arg0;
	}
	public Integer getPages() {
		return pages;
	}
	public void setPages(Integer pages) {
		this.pages = pages;
	}
	public Long getCount() {
		return count;
	}
	public void setCount(Long count) {
		this.count = count;
	}
	 
}