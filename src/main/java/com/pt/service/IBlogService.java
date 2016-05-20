package com.pt.service;

import java.util.List;

import com.pt.entity.MyBlog;

public interface IBlogService {
	public List<MyBlog> getBlogList(String type, int stanum, int offset);
	public List<MyBlog> getBlogAllList(String type);
	public MyBlog getBlogDetail(Long id);
	public int addBlog(MyBlog myBlog);
	public int updBlog(MyBlog myBlog);
}
