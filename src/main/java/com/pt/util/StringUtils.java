package com.pt.util;

import java.util.regex.Pattern;

public class StringUtils {
	
	/** 
	* 使用正则表达式 判断是否为整数
	* @param str 
	* @return 
	*/ 
	public static boolean isNumberic(String str){ 
		Pattern p=Pattern.compile("[0-9]*"); 
		return p.matcher(str).matches(); 
	} 
}
