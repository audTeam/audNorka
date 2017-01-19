package com.aud.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aud.mapper.ImageMapper;
import com.aud.mapper.NavMenuMapper;
import com.aud.mapper.ProjectMapper;
import com.aud.pojo.Image;
import com.aud.pojo.Project;

@Controller("adminProjects")
@RequestMapping("/admin/projectCases/{caseId}/projects")
public class ProjectsController {
	@Autowired
	private NavMenuMapper navMenuMapper;
	@Autowired
	private ProjectMapper projectMapper;
	@Autowired
	private ImageMapper imageMapper;

	@RequestMapping(value = "/{id}", method=RequestMethod.DELETE)
	public String delete(@PathVariable("id") int id, @PathVariable("caseId") int caseId){
		this.projectMapper.deleteByPrimaryKey(id);
		return "redirect:/admin/projectCases/"+caseId;
	}

	@RequestMapping(value="", method=RequestMethod.GET)
	public String index(){
		return "admin/projects/index";
	}
	
	@RequestMapping(value="/new", method=RequestMethod.GET)
	public String newPage(@PathVariable("caseId") int caseId, ModelMap model){
		model.addAttribute("menu", this.navMenuMapper.selectByPrimaryKey(caseId));
		return "admin/projects/new";
	}

	@RequestMapping(value="", method=RequestMethod.POST)
	public String create(@PathVariable("caseId") int caseId, Project project, String[] imgUrls){
		this.projectMapper.insertSelective(project);

		int projectId = this.projectMapper.getMaxId();
		for(String imgUrl : imgUrls ){
			Image image = new Image();
			image.setImgUrl(imgUrl);
			image.setResourceId(projectId);
			this.imageMapper.insertSelective(image);
		}
		
		return "redirect:/admin/projectCases/"+caseId;
	}
}
