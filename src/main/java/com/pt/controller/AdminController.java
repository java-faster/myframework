package com.pt.controller;

import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.pt.entity.MyBlog;
import com.pt.service.IBlogService;
import com.pt.service.ICategoriesService;
import com.pt.util.StringUtils;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Resource
	private IBlogService blogService;
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
		mv.addObject("categoriesList", categoriesService.getCategoriesAllList());
		return mv;
	}
	
	@RequestMapping(value = "/addNewArticle",method=RequestMethod.POST)
	@ResponseBody
	public String addNewArticle(@ModelAttribute("myBlog")MyBlog myBlog){
		if(StringUtils.isBlank(myBlog.getTitle())){
			return "0";
		}
		if(StringUtils.isBlank(myBlog.getContent())){
			return "0";
		}
		if(StringUtils.isBlank(myBlog.getDescription())){
			return "0";
		}
		if(StringUtils.isBlank(myBlog.getCategories())){
			return "0";
		}
		Date today = new Date();
		myBlog.setAddTime(today);
		myBlog.setUptTime(today);
		myBlog.setLikeCount(0);
		myBlog.setCommentCount(0);
		
		if(blogService.addBlog(myBlog)==0){
			return "0";
		}
		return "1";
	}
}
