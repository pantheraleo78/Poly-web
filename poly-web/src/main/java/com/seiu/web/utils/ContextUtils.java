package com.seiu.web.utils;

import javax.servlet.http.HttpServletRequest;

public class ContextUtils {
	public static String getCurrentPath(HttpServletRequest request)
	{
		String query = request.getQueryString();
		if(query!=null&&query!=""){
			query = "?" +query;
		}else{
			query = "";
		}
	    return request.getRequestURL().toString() + query ;
	}
	public static boolean isBlank(String str){
		if(str!=null){
			if(!str.trim().equals("")){
				return false;
			}
		}
		return true;
	}
	
}
