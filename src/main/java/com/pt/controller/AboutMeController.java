package com.pt.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.pt.service.IExpService;

@Controller
@RequestMapping("/aboutme")
public class AboutMeController {
	@Resource
	private IExpService expService;
	
	@RequestMapping(value = "/personExp")
	public ModelAndView personExp(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		mv.addObject("explist",expService.getExpAllList());
		return mv;
	}
	
	@RequestMapping(value = "/personResume")
	public ModelAndView personResume(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		return mv;
	}
	
	@RequestMapping(value = "/sendEmail", method=RequestMethod.POST, produces = "text/html;charset=UTF-8")
	@ResponseBody
	public String sendEmail(HttpServletRequest request){
		return "1";
	}
}
