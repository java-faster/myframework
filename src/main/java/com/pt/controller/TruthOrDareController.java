package com.pt.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.pt.common.Common;
import com.pt.service.ITruthOrDareService;
import com.pt.util.StringUtils;

/**
 * 真心话大冒险
 * @author gehb
 *
 */
@Controller
@RequestMapping("/truthOrDare")
public class TruthOrDareController {
	@Resource
	private ITruthOrDareService truthOrDareService;
	
	@RequestMapping(value = "/turntable")
	public ModelAndView blogHome(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		return mv;
	}
	
	@RequestMapping(value = "/getTruthOrDareLst")
	@ResponseBody
	public ModelMap getTruthOrDareLst(HttpServletRequest request){	
		ModelMap modelMap = new ModelMap();
		
		String stanum = request.getParameter("stanum");
		String offset = request.getParameter("offset");
		
		if(!StringUtils.isNumberic(stanum)||!StringUtils.isNumberic(offset)){
			modelMap.put("state","0");
			modelMap.put("msg","服务器异常");
		}

		modelMap.put("state",Common.RETURN_NORMAL);
		modelMap.put("msg","正常");
		modelMap.put("data",truthOrDareService.getTruthOrDareLst(Integer.valueOf(stanum),Integer.valueOf(offset)));
		modelMap.put("count", truthOrDareService.getTruthOrDareAllLst().size());
		
		return modelMap;
	}
	
	@RequestMapping(value = "/getRandomTruthOrDareLst")
	@ResponseBody
	public ModelMap getRandomTruthOrDareLst(HttpServletRequest request){	
		ModelMap modelMap = new ModelMap();
		
		Integer stanum = (int)Math.floor(Math.random());
		
		String offset = request.getParameter("offset");
		
		if(!StringUtils.isNumberic(offset)){
			modelMap.put("state","0");
			modelMap.put("msg","服务器异常");
		}

		modelMap.put("state",Common.RETURN_NORMAL);
		modelMap.put("msg","正常");
		modelMap.put("data",truthOrDareService.getTruthOrDareLst(stanum,Integer.valueOf(offset)));
		modelMap.put("count", truthOrDareService.getTruthOrDareAllLst().size());
		
		return modelMap;
	}

}
