package com.hysd.action.admin;

 

 
 

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import com.hysd.cons.Sys;
import com.hysd.domain.CmgLog;
import com.hysd.domain.Merchant;
import com.hysd.domain.PageList;
import com.hysd.domain.Role;
import com.hysd.service.CmgLogService;
import com.hysd.service.RoleService;
import com.hysd.util.DateUtils;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@Controller
public class RoleAction extends ActionSupport{

	@Resource
	private RoleService roleService; 
	
	@Resource
	private CmgLogService cmgLogService; 
	
	private Role role;//已在栈中（有getter,setter才会放到栈里,不用put,页面就可以取到值）
	private Integer pageNo;
	private Integer pageSize;
	private Integer pages;
	private Long count;
	 
	
	public String list(){
		 
		pageNo=(pageNo==null?1:pageNo);
		pageSize=(pageSize==null?Sys.Common.PGGESIZE:pageSize);
		
		PageList<Role> pl=roleService.findAll(role,pageNo,pageSize);
		if(pl!=null){
			ActionContext.getContext().put("list",pl.getList() );
			this.pages=pl.getPages();
			this.count=pl.getCount();
		}
		return "list";
	}
	public String add(){
		return "add";
	}
	public String added(){
		role.setCts(DateUtils.DateTimeToString(new Date()));
		roleService.save(role);
		
		Merchant m=(Merchant) ActionContext.getContext().getSession().get("admin");
		
		CmgLog cl=new CmgLog();
		cl.setCmts(DateUtils.DateTimeToString(new Date()));
		cl.setType(Sys.CmgLog.CREATE);
		cl.setContent(m.getName()+" 添加角色："+role.getRname());
		cmgLogService.save(cl);
		
		return list();
	}
	public String update(){
		if(role.getRid()==null){
			return list();
		}
		role=roleService.getById(role.getRid());
		return "update";
	}
	public String updated(){
		if(role.getRid()!=null){
			Role oldr=roleService.getById(role.getRid());
			oldr.setRname(role.getRname());
			roleService.update(oldr);
			
			Merchant m=(Merchant) ActionContext.getContext().getSession().get("admin");
			
			CmgLog cl=new CmgLog();
			cl.setCmts(DateUtils.DateTimeToString(new Date()));
			cl.setType(Sys.CmgLog.UPDATE);
			cl.setContent(m.getName()+" 修改角色："+role.getRname()+"。rid:"+role.getRid());
			cmgLogService.save(cl);
		}
		return list();
	}
	public String delete(){
		if(role.getRid()!=null){
			return list();
		}
		return list();
	}
	
	public Role getRole() {
		return role;
	}
	public void setRole(Role role) {
		this.role = role;
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