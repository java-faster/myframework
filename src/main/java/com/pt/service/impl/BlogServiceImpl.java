package com.pt.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pt.dao.MyBlogMapper;
import com.pt.entity.MyBlog;
import com.pt.service.IBlogService;

@Service("blogService")
public class BlogServiceImpl implements IBlogService {
	@Resource
	private MyBlogMapper myBlogMapper;

	@Override
	public List<MyBlog> getBlogList(String type, int stanum, int offset) {
		// TODO Auto-generated method stub
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("stanum", stanum);
		map.put("offset", offset);
		map.put("type", type);
		return myBlogMapper.getMyBlogLst(map);
	}

	@Override
	public List<MyBlog> getBlogAllList(String type) {
		// TODO Auto-generated method stub
		return myBlogMapper.getMyBlogAllLst(type);
	}

	@Override
	public MyBlog getBlogDetail(Long id) {
		// TODO Auto-generated method stub
		return myBlogMapper.selectByPrimaryKey(id);
	}

	@Transactional(rollbackFor={Exception.class})
	@Override
	public int addBlog(MyBlog myBlog) {
		return myBlogMapper.insertSelective(myBlog);
	}

	@Transactional(rollbackFor={Exception.class})
	@Override
	public int updBlog(MyBlog myBlog) {
		// TODO Auto-generated method stub
		return myBlogMapper.updateByPrimaryKeySelective(myBlog);
	}

	
}
