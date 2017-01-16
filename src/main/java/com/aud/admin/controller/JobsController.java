package com.aud.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aud.mapper.JobMapper;
import com.aud.pojo.Job;
import com.google.gson.Gson;

@Controller("adminJobs")
@RequestMapping("/admin/jobs")
public class JobsController {

	@Autowired
	private JobMapper jobMapper;

	@RequestMapping(value = "", method = RequestMethod.GET)
	public String index(ModelMap model) {
		if (this.jobMapper.all().size() >0 ) {
			model.addAttribute("job", this.jobMapper.all().get(0));
		} else {
			model.addAttribute("job", null);
		}
		return "admin/jobs/show";
	}

	@RequestMapping(value = "/new", method = RequestMethod.GET)
	public String newPage() {
		return "admin/jobs/new";
	}

	@RequestMapping(value = "/{id}", method = RequestMethod.PATCH)
	public String update(@PathVariable("id") int id, Job job) {
		this.jobMapper.updateByPrimaryKeySelective(job);
		return "redirect:/admin/jobs/new";
	}

	@RequestMapping(value = "", method = RequestMethod.POST)
	public String create(Job job) {
		this.jobMapper.insertSelective(job);
		return "admin/jobs/new";
	}
}
