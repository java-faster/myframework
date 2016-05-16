package com.pt.service;

import java.util.List;

import com.pt.entity.MyComment;

public interface ICommentService {
	public List<MyComment> getCommentList(Long id, int stanum, int offset);
	public List<MyComment> getCommentAllList(Long id);
	public int insertComment(MyComment myComment);
}
