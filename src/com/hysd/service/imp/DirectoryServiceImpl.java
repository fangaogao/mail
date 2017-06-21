package com.hysd.service.imp;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hysd.dao.BaseDAO;
import com.hysd.domain.Directory;
import com.hysd.service.DirectoryService;

@Transactional //启用事务机制
@Service("directoryService")
public class DirectoryServiceImpl implements DirectoryService {

	@Resource
	private BaseDAO<Directory> baseDAO;

	  
	@Override
	public List<Directory> findAllList() {
		return baseDAO.find("from Directory where status=1 order by orderby desc");
	}
}