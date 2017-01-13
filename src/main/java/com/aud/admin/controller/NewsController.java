package com.aud.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aud.mapper.NavMenuMapper;
import com.aud.pojo.News;

@Controller("adminNews")
@RequestMapping("/admin/newsCategories/{newsCategoryId}/news")
public class NewsController {
	@Autowired
	private NavMenuMapper navMenuMapper;

	@RequestMapping(value = "", method = RequestMethod.GET)
	public String index() {
		return "admin/news/index";
	}

	@RequestMapping(value = "/new", method = RequestMethod.GET)
	public String newPage(@PathVariable("newsCategoryId") int newsCategoryId, ModelMap model) {
		model.addAttribute("newsCategory", this.navMenuMapper.selectByPrimaryKey(newsCategoryId));
		return "admin/news/new";
	}

	@RequestMapping(value = "", method = RequestMethod.POST)
	public String create(News news) {
		System.out.println("----------news: " + news);
		return "redirect:/admin/news/new";
	}

	@RequestMapping(value = "/{newsId}", method = RequestMethod.GET)
	public String show() {
		return "admin/news/show";
	}
}
