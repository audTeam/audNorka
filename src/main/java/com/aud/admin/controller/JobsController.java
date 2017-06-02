package com.aud.admin.controller;

import java.util.Date;
import java.util.Locale;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aud.mapper.JobCategoryMapper;
import com.aud.mapper.JobMapper;
import com.aud.pojo.Job;

@Controller("adminJobs")
@RequestMapping("/admin/categories/{categoryId}/jobs")
public class JobsController {

	@Autowired
	private JobMapper jobMapper;
	@Autowired
	private JobCategoryMapper jobCategoryMapper;

    @ModelAttribute
    public void setCurrentModule(ModelMap model) {  
       model.addAttribute("currentModule", "5");
    }
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String index(@PathVariable("categoryId") int categoryId, ModelMap model, Locale locale) {
		model.addAttribute("jobCategory", this.jobCategoryMapper.selectByPrimaryKey(categoryId));
		model.addAttribute("jobs", this.jobMapper.selectByCategoryId(categoryId, locale.getLanguage()));
		return "admin/jobs/index";
	}

	@RequestMapping(value = "/new", method = RequestMethod.GET)
	public String newPage(@PathVariable("categoryId") int categoryId, ModelMap model) {
		model.addAttribute("jobCategory", this.jobCategoryMapper.selectByPrimaryKey(categoryId));
		return "admin/jobs/new";
	}
	
	@RequestMapping(value = "/{id}/edit", method = RequestMethod.GET)
	public String edit(@PathVariable("categoryId") int categoryId, @PathVariable("id") int id, ModelMap model) {
		model.addAttribute("jobCategory", this.jobCategoryMapper.selectByPrimaryKey(categoryId));
		model.addAttribute("job", this.jobMapper.selectByPrimaryKey(id));
		return "admin/jobs/edit";
	}

	@RequestMapping(value = "/{id}/update", method = RequestMethod.POST)
	public String update(@PathVariable("id") int id, @PathVariable("categoryId") int categoryId, Job job){
		this.jobMapper.updateByPrimaryKeySelective(job);
		return "redirect:/admin/categories/"+categoryId+"/jobs";
	}
	
	@RequestMapping(value = "/{id}/delete", method = RequestMethod.POST)
	public String delete(@PathVariable("id") int id, @PathVariable("categoryId") int categoryId){
		this.jobMapper.deleteByPrimaryKey(id);
		return "redirect:/admin/categories/"+categoryId+"/jobs";
	}

	@RequestMapping(value = "", method = RequestMethod.POST)
	public String create(Job job, @PathVariable("categoryId") int categoryId, Locale locale){
		job.setCategoryId(categoryId);
		job.setCreatedAt(new Date());
		job.setLang(locale.getLanguage());
		this.jobMapper.insertSelective(job);
		return "redirect:/admin/categories/"+categoryId+"/jobs";
	}
}
