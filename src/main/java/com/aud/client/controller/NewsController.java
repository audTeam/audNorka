package com.aud.client.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/client/news")
public class NewsController {

	@RequestMapping(value="", method=RequestMethod.GET)
	public String index(){
		return "client/news/index";
	}
	
	@RequestMapping(value="/{newsId}", method=RequestMethod.GET)
	public String show(){
		return "client/news/show";
	}
}
