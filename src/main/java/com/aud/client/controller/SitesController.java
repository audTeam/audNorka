package com.aud.client.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aud.mapper.BannerMapper;
import com.aud.mapper.NavMenuMapper;
import com.aud.mapper.ProjectMapper;
import com.aud.pojo.NavMenu;
import com.google.gson.Gson;

@Controller
@RequestMapping("/sites")
public class SitesController extends BaseController {
	@Autowired
	private BannerMapper bannerMapper;
	@Autowired
	private NavMenuMapper navMenuMapper;
	@Autowired
	private ProjectMapper projectMapper;

	@RequestMapping(value = "", method=RequestMethod.GET)
	public String show(ModelMap model){

		model.addAttribute("banners", this.bannerMapper.all());
<<<<<<< HEAD
		List<NavMenu> projectNavMenus = this.navMenuMapper.allNavMenuByParentNav(1);
		List<NavMenu> teamsNavMenus = this.navMenuMapper.allNavMenuByParentNav(2);
		List<NavMenu> newsNavMenus = this.navMenuMapper.allNavMenuByParentNav(3);
		System.out.println("---------------:"+new Gson().toJson(teamsNavMenus));
		Iterator<NavMenu> iter = projectNavMenus.iterator();
		List<Map<String, Object>> projectMenus = new ArrayList<Map<String, Object>>();

		while(iter.hasNext()){
			Map<String, Object> item = new HashMap<String, Object>();
			NavMenu navMenu = iter.next();
			item.put("secondNavMenu", navMenu);
			item.put("thridNavMenu", projectMapper.getByNavMenuId(navMenu.getId()));
			projectMenus.add(item);
		}
		model.addAttribute("projectNavMenus", projectMenus);
		model.addAttribute("teamsNavMenus", teamsNavMenus);
		model.addAttribute("newsNavMenus", newsNavMenus);
=======
>>>>>>> 04c2c69578540d168f5425df197c9f6c7ad5e2ae

		return "client/sites/show";
	}
}
