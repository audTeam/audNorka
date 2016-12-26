package com.aud.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("adminNews")
@RequestMapping("admin/news")
public class NewsController {
	
	@RequestMapping(value="", method=RequestMethod.GET)
	public String index(){
		return "admin/news/index";
	}
	
	@RequestMapping(value="/{newsId}", method=RequestMethod.GET)
	public String show(){
		return "admin/news/show";
	}
}
