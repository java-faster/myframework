package com.pt.service;

import java.util.List;

import com.pt.entity.MyMsg;


public interface IMsgService {
	
	public int insertMsg(MyMsg myMsg);

	public List<MyMsg> getMsgAllList();
}
