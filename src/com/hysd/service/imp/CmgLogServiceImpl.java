package com.hysd.service.imp;


import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hysd.dao.BaseDAO;
import com.hysd.domain.CmgLog;
import com.hysd.service.CmgLogService;

@Transactional //启用事务机制
@Service("cmgLogService")
public class CmgLogServiceImpl implements CmgLogService {

	@Resource
	private BaseDAO<CmgLog> baseDAO;

	@Override
	public void save(CmgLog c) {
		baseDAO.save(c);
	}

	 
	  
	 
}