package com.hysd.service;

 
 
import com.hysd.domain.Merchant;

 

public interface MerchantService{

	 

	public  Merchant findForLogin(Merchant m);
	public void saveOrUpdate(Merchant m);

}