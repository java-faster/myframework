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

import com.pt.entity.MyComment;
import com.pt.entity.MyMsg;
import com.pt.entity.MyPhoto;
import com.pt.service.IBlogService;
import com.pt.service.ICategoriesService;
import com.pt.service.ICommentService;
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
	public ModelAndView blog(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();

		String pageNo = request.getParameter("pageNo");
		String pageSize = request.getParameter("pageSize");
		String type = request.getParameter("type");

		if (!StringUtils.isNumberic(pageNo)
				|| !StringUtils.isNumberic(pageSize)) {
			return mv;
		}

		Integer stanum = (Integer.valueOf(pageNo) - 1)
				* Integer.valueOf(pageSize);
		Integer offset = Integer.valueOf(pageSize);

		int count = blogService.getBlogAllList(type).size();
		mv.addObject("bloglist", blogService.getBlogList(type, stanum, offset));
		mv.addObject("blogcount", count);
		mv.addObject("pageNo", Integer.valueOf(pageNo));
		mv.addObject("pageSize", Integer.valueOf(pageSize));
		int pageMaxNo = count / Integer.valueOf(pageSize);
		if (count % Integer.valueOf(pageSize) != 0) {
			pageMaxNo++;
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
		
		myMsg.setState(0);
		myMsg.setAddTime(new Date());
		
		if(msgService.insertMsg(myMsg)==0){
			return "0";
		}
		return "1";
	}
	
	@RequestMapping(value = "/blogDetail")
	public ModelAndView blogDetail(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		
		String id = request.getParameter("id");
		
		if(!StringUtils.isNumberic(id)){
			return mv;
		}
		
		String pageNo = request.getParameter("pageNo");
		String pageSize = request.getParameter("pageSize");
		
		if(!StringUtils.isNumberic(pageNo)||!StringUtils.isNumberic(pageSize)){
			return mv;
		}
		
		Integer stanum = (Integer.valueOf(pageNo)-1) * Integer.valueOf(pageSize);
		Integer offset = Integer.valueOf(pageSize);
		
		int count = commentService.getCommentAllList(Long.valueOf(id)).size();
		mv.addObject("commentlist",commentService.getCommentList(Long.valueOf(id), stanum, offset));
		mv.addObject("commentcount", count);
		
		mv.addObject("pageNo", Integer.valueOf(pageNo));
		mv.addObject("pageSize", Integer.valueOf(pageSize));
		int pageMaxNo = count / Integer.valueOf(pageSize);
		if(count % Integer.valueOf(pageSize)!=0){
			pageMaxNo ++;
		}
		mv.addObject("pageNoList", new Integer[pageMaxNo]);
		
		mv.addObject("blog",blogService.getBlogDetail(Long.valueOf(id)));
		mv.addObject("categoriesList", categoriesService.getCategoriesAllList());
		return mv;
	}
	
	@RequestMapping(value = "/sendComment",method = RequestMethod.POST)
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
