package com.aud.admin.controller;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.aud.mapper.CompanyServiceMapper;
import com.aud.pojo.CompanyService;
import com.aud.service.ImageService;
import com.aud.tool.Utils;

@Controller("companyService")
@RequestMapping("/admin/companyServices")
public class CompanyServicesController {
	@Autowired
	private CompanyServiceMapper companyServiceMapper;
	@Autowired
	private ImageService imageService;

    @ModelAttribute
    public void setCurrentModule(ModelMap model) {  
       model.addAttribute("currentModule", "34");
    }
	@RequestMapping(value = "/new", method = RequestMethod.GET)
	public String newPage(ModelMap model) {
		model.addAttribute("companyService", new CompanyService());
		return "admin/companyServices/new";
	}

	@RequestMapping(value = "", method = RequestMethod.GET)
	public String index(ModelMap model, Locale locale) {
		model.addAttribute("companyServices", this.companyServiceMapper.all(locale.getLanguage()));
		return "admin/companyServices/index";
	}

	@RequestMapping(value = "", method = RequestMethod.POST)
	public String create(CompanyService companyService, MultipartFile file, Locale locale){
		companyService.setLang(locale.getLanguage());
		companyService.setImgUrl(imageService.uploadFile(file));
		companyService.setContent(Utils.replaceFontFamily(companyService.getContent()));
		this.companyServiceMapper.insertSelective(companyService);
		return "redirect:/admin/companyServices";
	}
	
	@RequestMapping(value = "/{id}/edit", method = RequestMethod.GET)
	public String edit(@PathVariable("id") int id, ModelMap model) {
		model.addAttribute("companyService", this.companyServiceMapper.selectByPrimaryKey(id));
		return "admin/companyServices/edit";
	}
	
	@RequestMapping(value = "/{id}/update", method = RequestMethod.POST)
	public String update(@PathVariable("id") int id, CompanyService companyService, MultipartFile file, ModelMap model){
		CompanyService oldCompanyService = companyServiceMapper.selectByPrimaryKey(id);
		if (file!=null&&!file.isEmpty()) {
			companyService.setImgUrl(imageService.uploadFile(file));
			imageService.deleteFile(oldCompanyService.getImgUrl());
		}
		companyService.setContent(Utils.replaceFontFamily(companyService.getContent()));
		this.companyServiceMapper.updateByPrimaryKeySelective(companyService);
		return "redirect:/admin/companyServices";
	}
	
	@RequestMapping(value = "/{id}/delete", method = RequestMethod.POST)
	public String delete(@PathVariable("id") int id) {
		CompanyService oldCompanyService = companyServiceMapper.selectByPrimaryKey(id);
		if(oldCompanyService.getImgUrl()!=null){
			imageService.deleteFile(oldCompanyService.getImgUrl());
		}
		this.companyServiceMapper.deleteByPrimaryKey(id);
		return "redirect:/admin/companyServices";
	} 
}
