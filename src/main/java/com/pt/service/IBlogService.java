package com.pt.service;

import java.util.List;

import com.pt.entity.MyBlog;

public interface IBlogService {
	public List<MyBlog> getBlogList(int stanum, int offset);
	public List<MyBlog> getBlogAllList();
	public MyBlog getBlogDetail(Long id);
}
