package com.aud.client.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aud.mapper.NavMenuMapper;
import com.aud.mapper.NewsMapper;
import com.aud.pojo.NavMenu;
import com.google.gson.Gson;

@Controller("clientNews")
@RequestMapping("/client/newsCategories")
public class NewsCategoriesController {
	@Autowired
	private NavMenuMapper navMenuMapper;
	@Autowired
	private NewsMapper newsMapper;

	@RequestMapping(value = "", method = RequestMethod.GET)
	public String index(ModelMap model) {
		List<NavMenu> newsNavMenus = this.navMenuMapper.allNavMenuByParentNav(3);
		model.addAttribute("newsNavMenus", newsNavMenus);
		model.addAttribute("news", this.newsMapper.selectByNewsCategoryId(newsNavMenus.get(0).getId()));
		return "client/newsCategories/index";
	}
}
