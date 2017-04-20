package com.aud.client.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.aud.mapper.NewsMapper;
import com.aud.pojo.News;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/client/news")
public class NewsController extends BaseController {

	@Autowired
	private NewsMapper newsMapper;

	@RequestMapping(value="", method=RequestMethod.GET)
	public String show(){
		
		return "client/news/index";
	}
}
