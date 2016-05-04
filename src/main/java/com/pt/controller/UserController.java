package com.pt.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.pt.entity.User;
import com.pt.service.IUserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Resource
	private IUserService userService;
	
	@RequestMapping(value = "/showUser")
	public ModelAndView showUser(HttpServletRequest request){
		int userId = Integer.parseInt(request.getParameter("id"));
		User user = this.userService.getUserById(userId);
		ModelAndView mv= new ModelAndView();
		mv.addObject("user", user);
		return mv;
	}
	
	@RequestMapping(value = "/test")
	@ResponseBody
	public String test(HttpServletRequest request){
		return "{\"msg\":\"you say:'yes'\"}";
	}

}
