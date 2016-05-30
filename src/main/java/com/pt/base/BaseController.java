package com.pt.base;

import java.sql.Date;
import java.text.SimpleDateFormat;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.beans.propertyeditors.CustomNumberEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;

/**
 * 关于我
 * @author gehb
 *
 */
public class BaseController {
	@InitBinder
	protected void initBinder(WebDataBinder binder){
	       binder.registerCustomEditor(Date.class, new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"), true));    
	              binder.registerCustomEditor(int.class, new CustomNumberEditor(int.class, true)); 
	              binder.registerCustomEditor(long.class, new CustomNumberEditor(long.class, true));  
	              binder.registerCustomEditor(double.class, new CustomNumberEditor(double.class, true)); 
	              binder.registerCustomEditor(float.class, new CustomNumberEditor(float.class, true));  
	}
}
