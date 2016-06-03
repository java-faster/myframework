package com.pt.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/mapHome")
public class MapHomeController {
	
	@RequestMapping(value = "/mapHome")
	public ModelAndView AllMap(HttpServletRequest request){
		ModelAndView mv= new ModelAndView();
		return mv;
	}
}
