package com.pt.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.pt.dao.MyCategoriesMapper;
import com.pt.entity.MyCategories;
import com.pt.service.ICategoriesService;

@Service("categoriesService")
public class CategoriesServiceImpl implements ICategoriesService {
	@Resource
	private MyCategoriesMapper myCategoriesMapper;

	@Override
	public List<MyCategories> getCategoriesAllList() {
		// TODO Auto-generated method stub
		return myCategoriesMapper.getCategoriesAllList();
	}


	
}
