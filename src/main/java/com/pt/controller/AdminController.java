package com.pt.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.pt.service.ICategoriesService;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Resource
	private ICategoriesService categoriesService;
	
	@RequestMapping(value = "/main")
	public ModelAndView main(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		return mv;
	}
	
	@RequestMapping(value = "/index")
	public ModelAndView index(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		return mv;
	}
	
	@RequestMapping(value = "/categories")
	public ModelAndView categories(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		mv.addObject("categoriesList", categoriesService.getCategoriesAllList());
		return mv;
	}
	
	@RequestMapping(value = "/addArticle")
	public ModelAndView addArticle(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		return mv;
	}
}
