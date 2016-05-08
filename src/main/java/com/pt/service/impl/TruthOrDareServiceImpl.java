package com.pt.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.pt.dao.TruthOrDareMapper;
import com.pt.entity.TruthOrDare;
import com.pt.service.ITruthOrDareService;

@Service("truthOrDareService")
public class TruthOrDareServiceImpl implements ITruthOrDareService {
	@Resource
	TruthOrDareMapper truthOrDareMapper;
	
	@Override
	public List<TruthOrDare> getTruthOrDareLst(int stanum,int offset) {
		// TODO Auto-generated method stub
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("stanum", stanum);
		map.put("offset", offset);
		return truthOrDareMapper.getTruthOrDareLst(map);
	}

	@Override
	public List<TruthOrDare> getTruthOrDareAllLst() {
		// TODO Auto-generated method stub
		return truthOrDareMapper.getTruthOrDareAllLst();
	}


}
