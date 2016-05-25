package com.pt.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.pt.entity.User;
import com.pt.service.IUserService;

/**
 * 用户管理
 * @author gehb
 *
 */
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
	
	// 新增加的Action方法，映射到
	// 1. /login 登录页面的常规显示
	// 2. /login?error 登录验证失败的展示
	// 3. /login?logout 注销登录的处理
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(
			@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout) {

		ModelAndView model = new ModelAndView();
		if (error != null) {
			model.addObject("error", "Invalid username and password!");
		}

		if (logout != null) {
			model.addObject("msg", "You've been logged out successfully.");
		}

		return model;

	}
}
