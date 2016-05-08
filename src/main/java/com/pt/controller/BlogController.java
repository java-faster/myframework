package com.pt.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.pt.service.IBlogService;
import com.pt.service.ICategoriesService;
import com.pt.util.StringUtils;

@Controller
@RequestMapping("/blog")
public class BlogController {
	@Resource
	private IBlogService blogService;
	@Resource
	private ICategoriesService categoriesService;
	
	@RequestMapping(value = "/blogHome")
	public ModelAndView blogHome(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		return mv;
	}
	
	@RequestMapping(value = "/blog")
	public ModelAndView blog(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		
		String pageNo = request.getParameter("pageNo");
		String pageSize = request.getParameter("pageSize");
		
		if(!StringUtils.isNumberic(pageNo)||!StringUtils.isNumberic(pageSize)){
			return mv;
		}
		
		Integer stanum = (Integer.valueOf(pageNo)-1) * Integer.valueOf(pageSize);
		Integer offset = Integer.valueOf(pageSize);
		
		mv.addObject("bloglist",blogService.getBlogList(stanum,offset));
		mv.addObject("blogcount", blogService.getBlogAllList().size());
		mv.addObject("pageNo", Integer.valueOf(pageNo));
		mv.addObject("pageSize", Integer.valueOf(pageSize));
		int pageMaxNo = blogService.getBlogAllList().size()/Integer.valueOf(pageSize);
		if(blogService.getBlogAllList().size()%Integer.valueOf(pageSize)!=0){
			pageMaxNo ++;
		}
		mv.addObject("pageNoList", new Integer[pageMaxNo]);
		
		mv.addObject("categoriesList", categoriesService.getCategoriesAllList());
		return mv;
	}
	
	@RequestMapping(value = "/photo")
	public ModelAndView photo(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		return mv;
	}
	
	@RequestMapping(value = "/about")
	public ModelAndView about(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		return mv;
	}
	
	@RequestMapping(value = "/contact")
	public ModelAndView contact(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		return mv;
	}
}
