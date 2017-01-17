package com.aud.client.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aud.mapper.BannerMapper;
import com.aud.mapper.NavMenuMapper;
import com.aud.pojo.NavMenu;
import com.google.gson.Gson;

@Controller
@RequestMapping("/client/news")
public class NewsController extends BaseController {

	@Autowired
	private BannerMapper bannerMapper;
	@Autowired
	private NavMenuMapper navMenuMapper;

	@RequestMapping(value="", method=RequestMethod.GET)
	public String index(ModelMap model){
		model.addAttribute("banners", this.bannerMapper.all());
		List<NavMenu> newsNavMenus = this.navMenuMapper.allNavMenuByParentNav(3);
		model.addAttribute("newsNavMenus", newsNavMenus);

		return "client/news/index";
	}
	
	@RequestMapping(value="/{newsId}", method=RequestMethod.GET)
	public String show(){
		return "client/news/show";
	}
}
