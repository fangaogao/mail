package com.hysd.service.imp;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Resource;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.hysd.dao.BaseDAO;
import com.hysd.domain.CmgLog;
import com.hysd.domain.PageList;
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

	@Override
	public PageList<CmgLog> findAll(CmgLog c, Integer pageNo, Integer pageSize) {
		String hql_list="from CmgLog where 1=1";
		String hql_count="select count(*) from CmgLog where 1=1";//为了配合分页
		
		List<Object> li=null;
		//动态拼接hql，灵活处理多条件查询
		if(c!=null){
			li=new ArrayList<Object>();
			//查询条件一
			if(StringUtils.isNotBlank(c.getCmts())){
				hql_count+=" and cmts like ?";
				hql_list+=" and cmts like ?";
				li.add("%"+c.getCmts()+"%");
			}
			//查询条件n
		/*	if(StringUtils.isNotBlank(c.getCmts())){
				hql_count+=" and cmts like ?";
				hql_list+=" and cmts like ?";
				li.add("%"+c.getCmts()+"%");
			}*/
				
		}
		hql_list+=" order by cmts desc";//desc 降序排列   默认的是升序 ase可省略
		
		List<CmgLog> cmgLogs=baseDAO.find(hql_list,li,pageNo==null?1:pageNo,pageSize);
		Long count=baseDAO.count(hql_count,li);
		
		PageList<CmgLog> pl=new PageList<CmgLog>();
		pl.setList(cmgLogs);
		pl.setCount(count);
		pl.setPageSize(pageSize); 
		pl.setPages(pl.getP(count, pageSize));
		
		return pl;
	}
}