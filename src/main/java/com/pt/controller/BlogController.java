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

import com.pt.base.Page;
import com.pt.entity.MyComment;
import com.pt.entity.MyMsg;
import com.pt.entity.MyPhoto;
import com.pt.service.IBlogService;
import com.pt.service.ICategoriesService;
import com.pt.service.ICommentService;
import com.pt.service.IMsgService;
import com.pt.service.IPhotoService;
import com.pt.util.StringUtils;

/**
 * 博客展示
 * @author gehb
 *
 */
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
	@Resource
	private ICommentService commentService;
	
	@RequestMapping(value = "/blogHome")
	public ModelAndView blogHome(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("photoLastGroupList", photoService.getMyPhotoLastGroupLst());
		mv.addObject("bloglist",blogService.getBlogList(null,0,1));
		return mv;
	}
	
	@RequestMapping(value = "/blog")
	public ModelAndView blog(HttpServletRequest request, @ModelAttribute("page")Page page) {
		ModelAndView mv = new ModelAndView();

		Integer pageNo = page.getPageNo();
		Integer pageSize = page.getPageSize();
		String type = request.getParameter("type");

		int count = blogService.getBlogAllList(type).size();
		mv.addObject("bloglist", blogService.getBlogList(type, (pageNo - 1) * pageSize, Integer.valueOf(pageSize)));
		mv.addObject("blogcount", count);
		mv.addObject("pageNo", pageNo);
		mv.addObject("pageSize", pageSize);
		int pageMaxNo = count / pageSize;
		if (count % pageSize != 0) {
			pageMaxNo++;
		}
		mv.addObject("pageNoList", new Integer[pageMaxNo]);

		mv.addObject("categoriesList", categoriesService.getCategoriesAllList());
		return mv;
	}
	
	@RequestMapping(value = "/photogroup")
	public ModelAndView photoGroup(HttpServletRequest request, @ModelAttribute("page")Page page){
		ModelAndView mv = new ModelAndView();
		
		Integer pageNo = page.getPageNo();
		Integer pageSize = page.getPageSize();
		
		mv.addObject("grouplist",photoService.getPhotoGroupList((pageNo - 1) * pageSize, Integer.valueOf(pageSize)));
		mv.addObject("groupcount", photoService.getPhotoGroupAllList().size());
		
		mv.addObject("pageNo", pageNo);
		mv.addObject("pageSize", pageSize);
		int pageMaxNo = photoService.getPhotoGroupAllList().size()/pageSize;
		if(photoService.getPhotoGroupAllList().size() % pageSize!=0){
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
		return photoService.getPhotoList(0,8);
	}
	
	@RequestMapping(value = "/photoHome")
	public ModelAndView photoHome(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		mv.addObject("group", request.getParameter("group"));
		return mv;
	}
	
	@RequestMapping(value = "/getMsg")
	@ResponseBody
	public List<MyMsg> getMsg(){
		return msgService.getMsgAllList();
	}
	
	@RequestMapping(value = "/sendMsg",method = RequestMethod.POST)
	@ResponseBody
	public String sendMsg(@ModelAttribute("myMsg")MyMsg myMsg){
		if(StringUtils.isBlank(myMsg.getName())){
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
		if(!StringUtils.isEmail(myMsg.getEmail())){
			return "0";
		}
		
		if(msgService.insertMsg(myMsg)==0){
			return "0";
		}
		return "1";
	}
	
	@RequestMapping(value = "/blogDetail")
	public ModelAndView blogDetail(HttpServletRequest request, @ModelAttribute("page")Page page){
		ModelAndView mv = new ModelAndView();
		
		String id = request.getParameter("id");
		
		if(!StringUtils.isNumberic(id)){
			return mv;
		}
		
		Integer pageNo = page.getPageNo();
		Integer pageSize = page.getPageSize();
		
		int count = commentService.getCommentAllList(Long.valueOf(id)).size();
		mv.addObject("commentlist",commentService.getCommentList(Long.valueOf(id), (pageNo - 1) * pageSize, Integer.valueOf(pageSize)));
		mv.addObject("commentcount", count);
		
		mv.addObject("pageNo", pageNo);
		mv.addObject("pageSize", pageSize);
		int pageMaxNo = count / pageSize;
		if(count % pageSize!=0){
			pageMaxNo ++;
		}
		mv.addObject("pageNoList", new Integer[pageMaxNo]);
		
		mv.addObject("blog",blogService.getBlogDetail(Long.valueOf(id)));
		mv.addObject("categoriesList", categoriesService.getCategoriesAllList());
		return mv;
	}
	
	@RequestMapping(value = "/sendComment",method = RequestMethod.POST,produces = "text/html;charset=UTF-8")
	@ResponseBody
	public String sendMsg(@ModelAttribute("myComment")MyComment myComment){
		if(StringUtils.isBlank(myComment.getUserName())){
			return "0";
		}		
		if(StringUtils.isBlank(myComment.getUserEmail())){
			return "0";
		}
		if(StringUtils.isBlank(myComment.getContent())){
			return "0";
		}
		if(!StringUtils.isEmail(myComment.getUserEmail())){
			return "0";
		}
		myComment.setAddTime(new Date());
		myComment.setReplyState(0);
		
		if(commentService.insertComment(myComment)==0){
			return "0";
		}
		return "1";
	}
}
