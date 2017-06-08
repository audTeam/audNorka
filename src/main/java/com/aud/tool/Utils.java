package com.aud.tool;

import org.apache.maven.shared.utils.StringUtils;

public class Utils {
	public static String replaceFontFamily(String str){
		if(StringUtils.isNotEmpty(str)){
			return str.replace("font-family", "font-bak-family");
		}
		return "";
	}
}
