package com.pt.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/blog")
public class BlogController {
	
	@RequestMapping(value = "/blogHome")
	public ModelAndView blogHome(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		return mv;
	}
}
