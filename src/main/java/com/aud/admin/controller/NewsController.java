package com.aud.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aud.mapper.NavMenuMapper;
import com.aud.mapper.NewsMapper;
import com.aud.pojo.News;
import com.aud.pojo.Project;

@Controller("adminNews")
@RequestMapping("/admin/newsCategories/{newsCategoryId}/news")
public class NewsController {
	@Autowired
	private NavMenuMapper navMenuMapper;
	private NewsMapper newsMapper;

	@RequestMapping(value = "", method = RequestMethod.GET)
	public String index(@PathVariable("newsCategoryId") int newsCategoryId,ModelMap model) {
		model.addAttribute("news", this.newsMapper.allNewsParentNav(newsCategoryId));
		return "admin/news/index";
	}

	@RequestMapping(value = "/new", method = RequestMethod.GET)
	public String newPage(@PathVariable("newsCategoryId") int newsCategoryId, ModelMap model) {
		model.addAttribute("newsCategory", this.navMenuMapper.selectByPrimaryKey(newsCategoryId));
		return "admin/news/new";
	}

	@RequestMapping(value = "", method = RequestMethod.POST)
	public String create(News news) {
		this.newsMapper.insertSelective(news);
		return "redirect:/admin/newsCategories/{newsCategoryId}/news";
	}
	

	@RequestMapping(value = "/{newsId}", method = RequestMethod.GET)
	public String show() {
		return "admin/news/show";
	}
}
