package com.hysd.service;

import java.util.List;

import com.hysd.domain.Directory;
import com.hysd.domain.PageList;

public interface DirectoryService{

	 

	public List<Directory> findAllList();

	public PageList<Directory> findAll(Integer pageNo, Integer pageSize,
			Directory directory);

	public void add(Directory directory);
	
	

}