package com.hysd.service;

 
 
import java.util.List;

import com.hysd.domain.Merchant;

 

public interface MerchantService{

	 

	public  Merchant findForLogin(Merchant m);
	public void saveOrUpdate(Merchant m);
	public List<Merchant> findAll();
	public Merchant findById(Integer mid);

}