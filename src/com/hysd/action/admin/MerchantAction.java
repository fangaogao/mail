package com.hysd.action.admin;

 

 
 
import java.io.File;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.springframework.stereotype.Controller;

import com.hysd.cons.Sys;
import com.hysd.domain.Merchant;
import com.hysd.service.MerchantService;
import com.hysd.util.UpFile;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@Controller
public class MerchantAction extends ActionSupport implements ServletRequestAware{
	
	HttpServletRequest requset;
	@Resource
	MerchantService merchantService;
	 //上传文件   
    private File file;   
    private Merchant merchant;   

	public String info(){
		return "info";
	}
	
	public String uploadface(){
		try {
			if(file!=null){
				String path=UpFile.uploadFile(file);
				if(StringUtils.isNotBlank(path)){
					merchant=(Merchant) ActionContext.getContext().getSession().get("admin");
					UpFile.deleteFile(merchant.getFaceimg());
					merchant.setFaceimg(path);
					merchantService.saveOrUpdate(merchant);
					ActionContext.getContext().getSession().put("admin",merchant);
					
					ActionContext.getContext().put("msg", "头像上传成功！");
				}else{
					ActionContext.getContext().put("msg", "头像上传失败！");
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "info";
	}
	
	/**
	 * 添加Merchant之前 跳转到添加页面
	 * @return
	 */
	public String addPre(){
		return "addPre";
	}
	
	/**
	 * 添加Merchant
	 * @return
	 */
	public String add(){
	    System.out.println(merchant);
		merchantService.saveOrUpdate(merchant);
		return "add";
	}
	
	/**
	 * 查询所有Merchant
	 * @return
	 */
	public String list(){
		List<Merchant> merLists = merchantService.findAll();
		ActionContext.getContext().put("merLists", merLists);
		return "list";
	}
	
	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		this.requset=arg0;
	}

	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

	


	 
	 
	
	 

	
	 
}