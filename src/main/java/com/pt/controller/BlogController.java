package com.pt.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.pt.entity.MyMsg;
import com.pt.entity.MyPhoto;
import com.pt.service.IBlogService;
import com.pt.service.ICategoriesService;
import com.pt.service.IMsgService;
import com.pt.service.IPhotoService;
import com.pt.util.StringUtils;

@Controller
@RequestMapping("/blog")
public class BlogController {
	@Resource
	private IBlogService blogService;
	@Resource
	private ICategoriesService categoriesService;
	@Resource
	private IPhotoService photoService;
	@Resource
	private IMsgService msgService;
	
	@RequestMapping(value = "/blogHome")
	public ModelAndView blogHome(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("photoLastGroupList", photoService.getMyPhotoLastGroupLst());
		mv.addObject("bloglist",blogService.getBlogList(0,1));
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
	
	@RequestMapping(value = "/photogroup")
	public ModelAndView photoGroup(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		
		String pageNo = request.getParameter("pageNo");
		String pageSize = request.getParameter("pageSize");
		
		if(!StringUtils.isNumberic(pageNo)||!StringUtils.isNumberic(pageSize)){
			return mv;
		}
		
		Integer stanum = (Integer.valueOf(pageNo)-1) * Integer.valueOf(pageSize);
		Integer offset = Integer.valueOf(pageSize);
		
		mv.addObject("grouplist",photoService.getPhotoGroupList(stanum,offset));
		mv.addObject("groupcount", photoService.getPhotoGroupAllList().size());
		
		mv.addObject("pageNo", Integer.valueOf(pageNo));
		mv.addObject("pageSize", Integer.valueOf(pageSize));
		int pageMaxNo = photoService.getPhotoGroupAllList().size()/Integer.valueOf(pageSize);
		if(photoService.getPhotoGroupAllList().size()%Integer.valueOf(pageSize)!=0){
			pageMaxNo ++;
		}
		mv.addObject("pageNoList", new Integer[pageMaxNo]);
		
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
	
	@RequestMapping(value = "/photoItem")
	@ResponseBody
	public List<MyPhoto> photoItem(HttpServletRequest request){
		return photoService.getPhotoGroupAllList();
	}
	
	@RequestMapping(value = "/photo")
	@ResponseBody
	public List<MyPhoto> photo(HttpServletRequest request){
		
		String group = request.getParameter("group");
		
		return photoService.getPhotoAllListByGroup(group);
	}
	
	@RequestMapping(value = "/photoFoot")
	@ResponseBody
	public List<MyPhoto> photoFoot(HttpServletRequest request){		
		return photoService.getPhotoAllList();
	}
	
	@RequestMapping(value = "/photoHome")
	public ModelAndView photoHome(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		mv.addObject("group", request.getParameter("group"));
		return mv;
	}
	
	@RequestMapping(value = "/sendMsg",method = RequestMethod.POST)
	public String sendMsg(@ModelAttribute("myMsg")MyMsg myMsg){
		if(StringUtils.isBlank(myMsg.getEmail())){
			return "0";
		}		
		if(StringUtils.isBlank(myMsg.getEmail())){
			return "0";
		}
		if(StringUtils.isBlank(myMsg.getTitle())){
			return "0";
		}
		if(StringUtils.isBlank(myMsg.getContent())){
			return "0";
		}
		
		myMsg.setState(0);
		myMsg.setAddTime(new Date());
		
		if(msgService.insertMsg(myMsg)==0){
			return "0";
		}
		return "1";
	}
}
