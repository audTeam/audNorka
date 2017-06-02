package com.aud.admin.controller;

import java.util.List;
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

import com.aud.mapper.HistoryIntroduceMapper;
import com.aud.mapper.JobCategoryMapper;
import com.aud.pojo.HistoryIntroduce;
import com.aud.pojo.JobCategory;
import com.aud.service.ImageService;

@Controller
@RequestMapping("/admin/categories")
public class JobCategoriesController {
	@Autowired
	private JobCategoryMapper jobCategoryMapper;
	@Autowired
	private HistoryIntroduceMapper historyIntroduceMapper;
	@Autowired
	private ImageService imageService;

    @ModelAttribute
    public void setCurrentModule(ModelMap model) {  
       model.addAttribute("currentModule", "5");
    }

	@RequestMapping(value = "/new", method = RequestMethod.GET)
	public String newPage(ModelMap model) {
		return "admin/categories/new";
	}

	@RequestMapping(value = "", method = RequestMethod.GET)
	public String index(ModelMap model, Locale locale) {
		List<HistoryIntroduce> all = this.historyIntroduceMapper.all(locale.getLanguage());
		if (all.size() > 0) {
			model.addAttribute("historyIntroduce", all.get(0));
		} else {
			HistoryIntroduce historyIntroduce = new HistoryIntroduce();
			historyIntroduce.setCompanyHistory("");
			historyIntroduce.setCooperationCompany("");
			historyIntroduce.setVideo("");
			historyIntroduce.setHeadImg("");
			historyIntroduce.setServiceContent("");
			historyIntroduce.setServiceHeadImg("");
			historyIntroduce.setJobHeadImg("");
			historyIntroduce.setLang(locale.getLanguage());
			historyIntroduceMapper.insertSelective(historyIntroduce);
			model.addAttribute("historyIntroduce", new HistoryIntroduce());
		}
		model.addAttribute("jobCategories", this.jobCategoryMapper.all(locale.getLanguage()));
		return "admin/categories/index";
	}

	@RequestMapping(value = "/headImg/update", method = RequestMethod.POST)
	public String update(HistoryIntroduce historyIntroduce, MultipartFile jobPic, HttpServletRequest request, Locale locale){
		if(jobPic!=null&&!jobPic.isEmpty()){
			historyIntroduce.setJobHeadImg(imageService.uploadFile(jobPic));	
		}
		List<HistoryIntroduce> all = this.historyIntroduceMapper.all(locale.getLanguage());
		historyIntroduce.setId(all.get(0).getId());
		historyIntroduce.setLang(locale.getLanguage());
		this.historyIntroduceMapper.updateByPrimaryKeySelective(historyIntroduce);
		return "redirect:/admin/categories";
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
