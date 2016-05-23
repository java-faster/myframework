package com.pt.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.pt.base.Page;
import com.pt.entity.MyBlog;
import com.pt.entity.MyPhoto;
import com.pt.service.IBlogService;
import com.pt.service.ICategoriesService;
import com.pt.service.IPhotoService;
import com.pt.util.StringUtils;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Resource
	private IBlogService blogService;
	@Resource
	private ICategoriesService categoriesService;
	@Resource
	private IPhotoService photoService;
	
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
	
	@RequestMapping(value = "/articleList")
	public ModelAndView articleList(HttpServletRequest request, @ModelAttribute("page")Page page){
		
		ModelAndView mv = new ModelAndView();

		Integer pageNo = page.getPageNo();
		Integer pageSize = page.getPageSize();
		String type = request.getParameter("type");

		int count = blogService.getBlogAllList(type).size();
		mv.addObject("bloglist", blogService.getBlogList(type, (pageNo - 1) * pageSize, Integer.valueOf(pageSize)));
		mv.addObject("blogcount", count);
		int pageMaxNo = count / pageSize;
		if (count % pageSize != 0) {
			pageMaxNo++;
		}
		
		mv.addObject("pageNoList", new Integer[pageMaxNo]);
		
		return mv;
	}
	
	@RequestMapping(value = "/addArticle")
	public ModelAndView addArticle(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		mv.addObject("categoriesList", categoriesService.getCategoriesAllList());
		return mv;
	}
	
	@RequestMapping(value = "/addNewArticle",method=RequestMethod.POST,produces = "text/html;charset=UTF-8")
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
	
	@RequestMapping(value = "/updArticle")
	public ModelAndView blogDetail(HttpServletRequest request, @ModelAttribute("page")Page page){
		ModelAndView mv = new ModelAndView();
		
		String id = request.getParameter("id");
		
		if(!StringUtils.isNumberic(id)){
			return mv;
		}
		mv.addObject("categoriesList", categoriesService.getCategoriesAllList());
		mv.addObject("blog",blogService.getBlogDetail(Long.valueOf(id)));
		return mv;
	}
	
	@RequestMapping(value = "/updExitArticle",method=RequestMethod.POST,produces = "text/html;charset=UTF-8")
	@ResponseBody
	public String updExitArticle(@ModelAttribute("myBlog")MyBlog myBlog){
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
		myBlog.setUptTime(today);
		
		if(blogService.updBlog(myBlog)==0){
			return "0";
		}
		return "1";
	}
	
	@RequestMapping(value = "/photo")
	public ModelAndView photo(HttpServletRequest request, @ModelAttribute("page")Page page){
		
		ModelAndView mv = new ModelAndView();
		
		Integer pageNo = page.getPageNo();
		Integer pageSize = page.getPageSize();

		int count = photoService.getPhotoAllList().size();
		mv.addObject("photoList", photoService.getPhotoList((pageNo - 1) * pageSize, pageSize));
		mv.addObject("photocount", count);
		int pageMaxNo = count / pageSize;
		if (count % pageSize != 0) {
			pageMaxNo++;
		}
		
		mv.addObject("pageNoList", new Integer[pageMaxNo]);
		
		return mv;
	}
	
	@RequestMapping(value = "/addPhoto")
	public ModelAndView addPhoto(HttpServletRequest request){
		
		ModelAndView mv = new ModelAndView();
		
		return mv;
	}
	
	
	@RequestMapping(value = "/addNewPhoto",method=RequestMethod.POST,produces = "text/html;charset=UTF-8")
	@ResponseBody
	public String addNewPhoto(@ModelAttribute("myPhoto")MyPhoto myPhoto){
		
		if(StringUtils.isBlank(myPhoto.getTitle())){
			return "0";
		}
		if(StringUtils.isBlank(myPhoto.getImgPath())){
			return "0";
		}
		if(StringUtils.isBlank(myPhoto.getDescription())){
			return "0";
		}
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		Date today = new Date();
		myPhoto.setUptTime(today);
		myPhoto.setAddTime(today);
		myPhoto.setGroupName(sdf.format(today));
		
		if(photoService.insertPhoto(myPhoto)==0){
			return "0";
		}
		return "1";
	}
	
	@RequestMapping(value = "/delPhoto",method=RequestMethod.POST,produces = "text/html;charset=UTF-8")
	@ResponseBody
	public String delPhoto(@ModelAttribute("myPhoto")MyPhoto myPhoto){
		
		myPhoto.setState(0);
		
		if(photoService.updPhoto(myPhoto)==0){
			return "0";
		}
		return "1";
	}
	
	@RequestMapping(value = "/updPhoto",method=RequestMethod.POST,produces = "text/html;charset=UTF-8")
	@ResponseBody
	public String updPhoto(@ModelAttribute("myPhoto")MyPhoto myPhoto){
		
		if(StringUtils.isBlank(myPhoto.getTitle())){
			return "0";
		}
		if(StringUtils.isBlank(myPhoto.getDescription())){
			return "0";
		}
		
		Date today = new Date();
		myPhoto.setUptTime(today);
		
		if(photoService.updPhoto(myPhoto)==0){
			return "0";
		}
		return "1";
	}

}
