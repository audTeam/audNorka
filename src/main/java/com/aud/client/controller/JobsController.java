package com.aud.client.controller;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.aud.mapper.HistoryIntroduceMapper;
import com.aud.mapper.JobCategoryMapper;
import com.aud.mapper.JobMapper;
import com.aud.pojo.HistoryIntroduce;
import com.aud.pojo.JobCategory;

@Controller
@RequestMapping("/client/jobs")
public class JobsController extends BaseController{
	@Autowired
	private JobMapper jobMapper;
	@Autowired
	private JobCategoryMapper jobCategoryMapper;
	@Autowired
	private HistoryIntroduceMapper historyIntroduceMapper;

	@RequestMapping(value="", method=RequestMethod.GET)
	public String index(ModelMap model, Locale locale, @RequestParam(value="id", required=false) Integer id){
		List<JobCategory> jobCategories = this.jobCategoryMapper.all(locale.getLanguage());
		if(id!=null){
			model.addAttribute("currentCategory", this.jobCategoryMapper.selectByPrimaryKey(id));
			model.addAttribute("currentJobs", this.jobMapper.selectByCategoryId(id, locale.getLanguage()));
		}else{
			if(jobCategories!=null&&jobCategories.size()>0){
				model.addAttribute("currentCategory", jobCategories.get(0));
				int categoryId = jobCategories.get(0).getId();
				model.addAttribute("currentJobs", this.jobMapper.selectByCategoryId(categoryId, locale.getLanguage()));
			}else{
				model.addAttribute("currentCategory", new JobCategory());
				model.addAttribute("currentJobs", null);
			}
		}
		List<HistoryIntroduce> all = this.historyIntroduceMapper.all(locale.getLanguage());
		if(all!=null&&all.size()>0){
			model.addAttribute("historyIntroduce", all.get(0));
		}else{
			model.addAttribute("historyIntroduce", new HistoryIntroduce());
		}
		model.addAttribute("jobCategories", jobCategories);
		return "client/jobs/index";
	}

	@RequestMapping(value="/jobDetail", method=RequestMethod.GET)
	public String show(ModelMap model, Locale locale, @RequestParam(value="id", required=false) Integer id){
		model.addAttribute("currentJob", this.jobMapper.selectByPrimaryKey(id));
		List<JobCategory> jobCategories = this.jobCategoryMapper.all(locale.getLanguage());
		model.addAttribute("jobCategories", jobCategories);
		return "client/jobs/show";
	}
}
