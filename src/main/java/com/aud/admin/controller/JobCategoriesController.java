package com.aud.admin.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.aud.mapper.BannerMapper;
import com.aud.mapper.JobCategoryMapper;
import com.aud.pojo.Banner;
import com.aud.pojo.JobCategory;

@Controller
@RequestMapping("/admin/categories")
public class JobCategoriesController {
	@Autowired
	private JobCategoryMapper jobCategoryMapper;

	@RequestMapping(value = "/new", method = RequestMethod.GET)
	public String newPage(ModelMap model) {
		return "admin/categories/new";
	}

	@RequestMapping(value = "", method = RequestMethod.GET)
	public String index(ModelMap model, Locale locale) {
		model.addAttribute("jobCategories", this.jobCategoryMapper.all(locale.getLanguage()));
		return "admin/categories/index";
	}

	@RequestMapping(value = "", method = RequestMethod.POST)
	public String create(JobCategory jobCategory, Locale locale){
		jobCategory.setLang(locale.getLanguage());
		this.jobCategoryMapper.insertSelective(jobCategory);
		return "redirect:/admin/categories";
	}
	
	@RequestMapping(value = "/{id}/edit", method = RequestMethod.GET)
	public String edit(@PathVariable("id") int id, ModelMap model) {
		model.addAttribute("jobCategory", this.jobCategoryMapper.selectByPrimaryKey(id));
		return "admin/categories/edit";
	}
	
	@RequestMapping(value = "/{id}/update", method = RequestMethod.POST)
	public String update(@PathVariable("id") int id, JobCategory jobCategory, ModelMap model){
		this.jobCategoryMapper.updateByPrimaryKeySelective(jobCategory);
		return "redirect:/admin/categories";
	}

	@RequestMapping(value = "/{id}/delete", method = RequestMethod.POST)
	public String delete(@PathVariable("id") int id) {
		this.jobCategoryMapper.deleteByPrimaryKey(id);
		return "redirect:/admin/categories";
	}
}
