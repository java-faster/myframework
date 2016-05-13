package com.pt.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.pt.dao.MyMsgMapper;
import com.pt.entity.MyMsg;
import com.pt.service.IMsgService;

@Service("msgService")
public class MsgServiceImpl implements IMsgService {
	@Resource
	private MyMsgMapper myMsgMapper;

	@Override
	public int insertMsg(MyMsg myMsg) {
		// TODO Auto-generated method stub
		return myMsgMapper.insertSelective(myMsg);
	}

}
