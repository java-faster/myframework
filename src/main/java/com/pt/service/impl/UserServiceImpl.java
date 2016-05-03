package com.pt.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.pt.dao.IUserDao;
import com.pt.entity.User;
import com.pt.service.IUserService;

@Service("userService")
public class UserServiceImpl implements IUserService {
	@Resource
	private IUserDao userDao;
	@Override
	public User getUserById(int userId) {
		// TODO Auto-generated method stub
		return this.userDao.selectByPrimaryKey(userId);
	}

}
