package com.pt.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pt.dao.MyCommentMapper;
import com.pt.entity.MyComment;
import com.pt.service.ICommentService;

@Service("commentService")
public class CommentServiceImpl implements ICommentService {
	@Resource
	private MyCommentMapper myCommentMapper;

	@Override
	public List<MyComment> getCommentList(Long id, int stanum, int offset) {
		// TODO Auto-generated method stub
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("stanum", stanum);
		map.put("offset", offset);
		map.put("id", id);
		return myCommentMapper.selectByBlogId(map);
	}

	@Override
	public List<MyComment> getCommentAllList(Long id) {
		// TODO Auto-generated method stub
		return myCommentMapper.selectAllByBlogId(id);
	}

	@Transactional(rollbackFor={Exception.class})
	@Override
	public int insertComment(MyComment myComment) {
		// TODO Auto-generated method stub
		return myCommentMapper.insertSelective(myComment);
	}

}
