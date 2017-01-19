package com.aud.client.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aud.mapper.BannerMapper;
import com.aud.mapper.NavMenuMapper;
import com.aud.mapper.NewsMapper;
import com.aud.pojo.NavMenu;
import com.google.gson.Gson;

@Controller
@RequestMapping("/client/newsCategories/{newsCategoryId}/news")
public class NewsController extends BaseController {
	@Autowired
	private NavMenuMapper navMenuMapper;
	@Autowired
	private NewsMapper newsMapper;

/*	@RequestMapping(value="/{id}", method=RequestMethod.GET)
	public String index(@PathVariable("id") int id, ModelMap model){
		model.addAttribute("banners", this.bannerMapper.all());
		List<NavMenu> newsNavMenus = this.navMenuMapper.allNavMenuByParentNav(3);
		
		model.addAttribute("news", this.newsMapper.selectByNewsCategoryId(id));
		model.addAttribute("newsCategory", this.navMenuMapper.selectByPrimaryKey(id));
		return "client/news/index";
	}*/
	
	@RequestMapping(value="/{id}", method=RequestMethod.GET)
	public String show(@PathVariable("newsCategoryId") int newsCategoryId, @PathVariable("id") int id, ModelMap model){
		model.addAttribute("newItem", this.newsMapper.selectByPrimaryKey(id));
		model.addAttribute("news", this.newsMapper.selectByNewsCategoryId(newsCategoryId));
		return "client/news/show";
	}
}
