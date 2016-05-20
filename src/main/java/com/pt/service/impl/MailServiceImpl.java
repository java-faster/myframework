package com.pt.service.impl;

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.pt.entity.MyMsg;
import com.pt.service.IMailService;

@Service("mailService")
public class MailServiceImpl implements IMailService {
	@Autowired
	JavaMailSender mailSender;
	@Autowired
	SimpleMailMessage message;
	
	@Override
	public int sendMail(MyMsg myMsg) {
		
		message.setTo(myMsg.getEmail());
		message.setSubject(myMsg.getTitle());
		message.setText(myMsg.getContent());
		message.setSentDate(new Date());
		
		mailSender.send(message);
		return 1;
	}
	
}
