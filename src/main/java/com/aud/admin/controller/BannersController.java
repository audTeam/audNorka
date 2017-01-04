package com.aud.admin.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.aud.mapper.BannerMapper;
import com.aud.pojo.Banner;
import com.aud.tool.Utils;

@Controller
@RequestMapping("/admin/banners")
public class BannersController {
	@Autowired
	private BannerMapper bannerMapper;
	
	@RequestMapping(value = "/new", method = RequestMethod.GET)
	public String newPage(ModelMap model) {
		model.addAttribute("banner", new Banner());
		return "admin/banners/new";
	}
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String index(ModelMap model) {
		model.addAttribute("banners", this.bannerMapper.all());
		return "admin/banners/index";
	}
	
	@RequestMapping(value = "", method = RequestMethod.POST)
	public String create(Banner banner, MultipartFile file, HttpServletRequest request)
	    throws IllegalStateException, IOException {
		System.out.println("banner: "+banner);
		banner.setImgUrl(Utils.saveFile(file, request, "upload/img/banner/"));
		this.bannerMapper.insertSelective(banner);
		return "redirect:/admin/banners";
	}
	
	@RequestMapping(value = "/{id}/edit", method = RequestMethod.GET)
	public String edit(@PathVariable("id") int id, ModelMap model) {
		model.addAttribute("banner", this.bannerMapper.selectByPrimaryKey(id));
		return "admin/banners/edit";
	}
	
	@RequestMapping(value = "/{id}", method = RequestMethod.PATCH)
	public String update(Banner banner, MultipartFile file, HttpServletRequest request, ModelMap model) throws IllegalStateException, IOException {
		banner.setImgUrl(Utils.saveFile(file, request, "upload/img/banner/"));
		this.bannerMapper.updateByPrimaryKeySelective(banner);
		return "redirect:/admin/banners";
	}
	
	@RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
	public String delete(@PathVariable("id") int id) {
		this.bannerMapper.deleteByPrimaryKey(id);
		return "redirect:/admin/banners";
	}
}
