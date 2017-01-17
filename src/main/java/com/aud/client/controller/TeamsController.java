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
import com.aud.pojo.NavMenu;
import com.google.gson.Gson;



@Controller("clientTeams")
@RequestMapping("/client/teams")
public class TeamsController {
//	@RequestMapping(value="", method=RequestMethod.GET)
//	public String index(){
//		return "client/teams/index";
//	}
	
	@Autowired
	private BannerMapper bannerMapper;
	@Autowired
	private NavMenuMapper navMenuMapper;

	@RequestMapping(value="", method=RequestMethod.GET)
	public String index(ModelMap model){
		model.addAttribute("banners", this.bannerMapper.all());
		List<NavMenu> teamsNavMenus = this.navMenuMapper.allNavMenuByParentNav(2);
		System.out.println("---------------:"+new Gson().toJson(teamsNavMenus));
		model.addAttribute("teamsNavMenus", teamsNavMenus);

		return "client/teams/show";
	}
	
	
	
	@RequestMapping(value="/{personId}", method=RequestMethod.GET)
	public String show(@PathVariable("personId") String personId){
		return "client/teams/show";
	}
}
