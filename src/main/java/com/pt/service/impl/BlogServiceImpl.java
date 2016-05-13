package com.pt.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.pt.dao.MyBlogMapper;
import com.pt.entity.MyBlog;
import com.pt.service.IBlogService;

@Service("blogService")
public class BlogServiceImpl implements IBlogService {
	@Resource
	private MyBlogMapper myBlogMapper;

	@Override
	public List<MyBlog> getBlogList(int stanum, int offset) {
		// TODO Auto-generated method stub
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("stanum", stanum);
		map.put("offset", offset);
		return myBlogMapper.getMyBlogLst(map);
	}

	@Override
	public List<MyBlog> getBlogAllList() {
		// TODO Auto-generated method stub
		return myBlogMapper.getMyBlogAllLst();
	}

	@Override
	public MyBlog getBlogDetail(Long id) {
		// TODO Auto-generated method stub
		return myBlogMapper.selectByPrimaryKey(id);
	}

	
}
