package com.aud.tool;

import org.apache.maven.shared.utils.StringUtils;

public class Utils {
	public static String replaceFontFamily(String str){
		if(StringUtils.isNotEmpty(str)){
			String tmp = str.replace("font-family", "font-bak-family");
			return tmp.replace("<img", "<img class=\"img-responsive\"");
		}

		return "";
	}
}
