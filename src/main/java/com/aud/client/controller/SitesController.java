package com.aud.client.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aud.mapper.BannerMapper;

@Controller
@RequestMapping("/sites")
public class SitesController {
	@Autowired
	private BannerMapper bannerMapper;

	@RequestMapping(value = "", method=RequestMethod.GET)
	public String show(ModelMap model){
		model.addAttribute("banners", this.bannerMapper.all());
		return "client/sites/show";
	}
}
