package com.pt.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.pt.dao.MyExpMapper;
import com.pt.entity.MyExp;
import com.pt.service.IExpService;

@Service("expService")
public class ExpServiceImpl implements IExpService {
	@Resource
	private MyExpMapper myExpMapper;

	@Override
	public List<MyExp> getExpAllList() {
		// TODO Auto-generated method stub
		return myExpMapper.selectAll();
	}

	
}
