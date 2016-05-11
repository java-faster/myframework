package com.pt.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.pt.dao.MyPhotoMapper;
import com.pt.entity.MyPhoto;
import com.pt.service.IPhotoService;

@Service("photoService")
public class PhotoServiceImpl implements IPhotoService {
	@Resource
	private MyPhotoMapper myPhotoMapper;

	@Override
	public List<MyPhoto> getPhotoGroupList(int stanum, int offset) {
		// TODO Auto-generated method stub
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("stanum", stanum);
		map.put("offset", offset);
		return myPhotoMapper.getPhotoGroupList(map);
	}

	@Override
	public List<MyPhoto> getPhotoGroupAllList() {
		// TODO Auto-generated method stub
		return myPhotoMapper.getMyPhotoGroupAllLst();
	}

	
}
