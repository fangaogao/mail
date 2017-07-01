package com.hysd.service;

import com.hysd.domain.CmgLog;
import com.hysd.domain.PageList;
import com.hysd.domain.Role;

/**
 * @author hanma
 *
 */
public interface CmgLogService{

	 /**
	  * 保存日志
	 * @param c
	 */
	public void save(CmgLog c);
	/**
	 * 分页查询日志（带条件）
	 * @param c
	 * @param pageNo
	 * @param pageSize
	 * @return
	 */
	public PageList<CmgLog> findAll(CmgLog c,Integer pageNo,Integer pageSize);
}