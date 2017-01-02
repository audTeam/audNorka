package com.aud.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aud.pojo.News;

@Controller("adminNews")
@RequestMapping("admin/news")
public class NewsController {

	@RequestMapping(value="", method=RequestMethod.GET)
	public String index(){
		return "admin/news/index";
	}

	@RequestMapping(value="/new", method=RequestMethod.GET)
	public String newPage(){
		return "admin/news/new";
	}
	
	@RequestMapping(value="", method=RequestMethod.POST)
	public String create(News news){
		System.out.println("----------news: "+news);
		return "redirect:/admin/news/new";
	}
	
	@RequestMapping(value="/{newsId}", method=RequestMethod.GET)
	public String show(){
		return "admin/news/show";
	}
}
