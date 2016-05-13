package com.pt.util;

import java.util.regex.Pattern;

public class StringUtils extends org.apache.commons.lang3.StringUtils {
	
	/** 
	* 使用正则表达式 判断是否为整数
	* @param str 
	* @return 
	*/ 
	public static boolean isNumberic(String str){ 
		Pattern p=Pattern.compile("[0-9]*"); 
		return p.matcher(str).matches(); 
	} 
	
	/** 
	* 使用正则表达式 判断是否为邮箱
	* @param str 
	* @return 
	*/ 
	public static boolean isEmail(String str){ 
		Pattern p=Pattern.compile("^([a-zA-Z0-9_\\-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([a-zA-Z0-9\\-]+\\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\\]?)$"); 
		return p.matcher(str).matches(); 
	} 
}
