package com.pt.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pt.service.ITruthOrDareService;
import com.pt.util.StringUtils;

@Controller
@RequestMapping("/truthOrDare")
public class TruthOrDareController {
	@Resource
	private ITruthOrDareService truthOrDareService;
	
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

		modelMap.put("state","1");
		modelMap.put("msg","正常");
		modelMap.put("data",truthOrDareService.getTruthOrDareLst(Integer.valueOf(stanum),Integer.valueOf(offset)));
		modelMap.put("count", truthOrDareService.getTruthOrDareAllLst().size());
		
		return modelMap;
	}

}