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
		Pattern p=Pattern.compile("\\p{Alpha}\\w{2,15}[@][a-z0-9]{3,}[.]\\p{Lower}{2,}"); 
		return p.matcher(str).matches(); 
	} 
}
