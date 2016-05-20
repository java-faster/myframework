package com.pt.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pt.dao.MyMsgMapper;
import com.pt.entity.MyMsg;
import com.pt.service.IMsgService;

@Service("msgService")
public class MsgServiceImpl implements IMsgService {
	@Resource
	private MyMsgMapper myMsgMapper;

	@Transactional
	@Override
	public int insertMsg(MyMsg myMsg) {
		myMsg.setState(0);
		myMsg.setAddTime(new Date());
		// TODO Auto-generated method stub
		return myMsgMapper.insertSelective(myMsg);
	}

	@Override
	public List<MyMsg> getMsgAllList() {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("stanum", 0);
		map.put("offset", 5);
		return myMsgMapper.getMsgList(map);
	}

}
