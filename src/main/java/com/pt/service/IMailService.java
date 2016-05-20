package com.pt.service;

import com.pt.entity.MyBlog;
import com.pt.entity.MyMsg;

public interface IMailService {
	public int sendMail(MyMsg myMsg);
}
