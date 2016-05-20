package com.pt.service.test.impl;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.pt.entity.MyMsg;
import com.pt.service.IMailService;

@RunWith(SpringJUnit4ClassRunner.class)		//表示继承了SpringJUnit4ClassRunner类
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})

public class MailServiceImpl {
	@Resource
	IMailService mailService;
	
	@Test
	public void sendMail() {
		
		MyMsg myMsg = new MyMsg();
		myMsg.setEmail("1326787723@qq.com");
		myMsg.setTitle("写给强哥");
		myMsg.setContent("sbsb");
		
		mailService.sendMail(myMsg);
		
	}
	
}
