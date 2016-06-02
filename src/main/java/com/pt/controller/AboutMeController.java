package com.pt.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.pt.common.Common;
import com.pt.entity.MyMsg;
import com.pt.service.IExpService;
import com.pt.service.IMsgService;
import com.pt.util.StringUtils;

/**
 * 关于我
 * @author gehb
 *
 */
@Controller
@RequestMapping("/aboutme")
public class AboutMeController {
	@Resource
	private IExpService expService;
	@Resource
	private IMsgService msgService;
	
	@RequestMapping(value = "/personExp")
	public ModelAndView personExp(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		mv.addObject("explist",expService.getExpAllList());
		return mv;
	}
	
	/**
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/personResume")
	public ModelAndView personResume(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		return mv;
	}
	
	/**
	 * 发送消息
	 * @param myMsg
	 * @return
	 */
	@RequestMapping(value = "/sendEmail", method=RequestMethod.POST, produces = "text/html;charset=UTF-8")
	@ResponseBody
	public String sendEmail(@ModelAttribute("myMsg")MyMsg myMsg){
		if(StringUtils.isBlank(myMsg.getName())){
			return Common.RETURN_FAIL;
		}		
		if(StringUtils.isBlank(myMsg.getEmail())){
			return Common.RETURN_FAIL;
		}
		if(StringUtils.isBlank(myMsg.getTitle())){
			return Common.RETURN_FAIL;
		}
		if(StringUtils.isBlank(myMsg.getContent())){
			return Common.RETURN_FAIL;
		}
		if(!StringUtils.isEmail(myMsg.getEmail())){
			return Common.RETURN_FAIL;
		}
		
		if(msgService.insertMsg(myMsg)==0){
			return Common.RETURN_FAIL;
		}
		return Common.RETURN_NORMAL;
	}
}
