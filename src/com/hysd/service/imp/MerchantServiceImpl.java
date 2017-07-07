package com.hysd.service.imp;



import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hysd.dao.BaseDAO;
import com.hysd.domain.Merchant;
import com.hysd.service.MerchantService;

@Transactional //启用事务机制
@Service("merchantService")
public class MerchantServiceImpl implements MerchantService {

	@Resource
	private BaseDAO<Merchant> baseDAO;

	@Override
	public Merchant findForLogin(Merchant m) {
		Merchant mer=baseDAO.get("from Merchant where mobile=? and pwd=?", 
				new Object[]{m.getMobile(),m.getPwd()}); 
		return mer;
	}

	public void saveOrUpdate(Merchant m) {
		baseDAO.saveOrUpdate(m);
	}

	public List<Merchant> findAll() {
		return baseDAO.find("from Merchant");
	}

	/**
	 * 通过mid查询merchant
	 */
	public Merchant findById(Integer mid) {
		Merchant merchant = baseDAO.get(Merchant.class, mid);
		return merchant;
	}

	  
	 
}