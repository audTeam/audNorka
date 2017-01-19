package com.aud.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aud.mapper.NavMenuMapper;
import com.aud.pojo.NavMenu;
import com.aud.pojo.News;

@Controller("adminCatetory")
@RequestMapping("/admin/newsCategories")
public class NewsCategoriesController {
	@Autowired
	private NavMenuMapper navMenuMapper;

	@RequestMapping(value="", method=RequestMethod.GET)
	public String index(ModelMap model){
		model.addAttribute("newsCategories", this.navMenuMapper.allNavMenuByParentNav(3));
		return "admin/newsCategories/index";
	}

	@RequestMapping(value="/new", method=RequestMethod.GET)
	public String newPage(){
		return "admin/newsCategories/new";
	}
	
	@RequestMapping(value="", method=RequestMethod.POST)
	public String create(NavMenu navMenu){
		navMenu.setParentNav(3);
		navMenu.setLang("zh");
		System.out.println("----------navMenu: " + navMenu);
		this.navMenuMapper.insertSelective(navMenu);
		return "redirect:/admin/newsCategories";
	}

}
