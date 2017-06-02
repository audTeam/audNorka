package com.aud.admin.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.aud.mapper.BannerMapper;
import com.aud.pojo.Banner;
import com.aud.service.ImageService;

@Controller
@RequestMapping("/admin/companyBanners")
public class CompanyBanners {
	@Autowired
	private BannerMapper bannerMapper;
	@Autowired
	private ImageService imageService;

    @ModelAttribute
    public void setCurrentModule(ModelMap model) {  
       model.addAttribute("currentModule", "31");
    }
	@RequestMapping(value = "/new", method = RequestMethod.GET)
	public String newPage(ModelMap model) {
		model.addAttribute("banner", new Banner());
		return "admin/companyBanners/new";
	}

	@RequestMapping(value = "", method = RequestMethod.GET)
	public String index(ModelMap model, Locale locale) {
		model.addAttribute("banners", this.bannerMapper.all("companyBanners", locale.getLanguage()));
		return "admin/companyBanners/index";
	}

	@RequestMapping(value = "", method = RequestMethod.POST)
	public String create(Banner banner, MultipartFile file, HttpServletRequest request, Locale locale){
		banner.setLang(locale.getLanguage());
		banner.setImgUrl(imageService.uploadFile(file));
		banner.setBannerCategory("companyBanners");
		this.bannerMapper.insertSelective(banner);
		return "redirect:/admin/companyBanners";
	}
	
	@RequestMapping(value = "/{id}/edit", method = RequestMethod.GET)
	public String edit(@PathVariable("id") int id, ModelMap model) {
		model.addAttribute("banner", this.bannerMapper.selectByPrimaryKey(id));
		return "admin/companyBanners/edit";
	}
	
	@RequestMapping(value = "/{id}/update", method = RequestMethod.POST)
	public String update(@PathVariable("id") int id, Banner banner, MultipartFile file, ModelMap model){
		Banner oldbanner = bannerMapper.selectByPrimaryKey(id);
		if (file!=null&&!file.isEmpty()) {
			banner.setImgUrl(imageService.uploadFile(file));
			imageService.deleteFile(oldbanner.getImgUrl());
		}
		this.bannerMapper.updateByPrimaryKeySelective(banner);
		return "redirect:/admin/companyBanners";
	}
	
	@RequestMapping(value = "/{id}/delete", method = RequestMethod.POST)
	public String delete(@PathVariable("id") int id) {
		Banner banner = bannerMapper.selectByPrimaryKey(id);
		if(banner.getImgUrl()!=null){
			imageService.deleteFile(banner.getImgUrl());
		}
		this.bannerMapper.deleteByPrimaryKey(id);
		return "redirect:/admin/companyBanners";
	}
}
