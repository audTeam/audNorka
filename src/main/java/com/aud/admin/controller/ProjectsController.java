package com.aud.admin.controller;

import java.util.Locale;

import org.apache.maven.shared.utils.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aud.mapper.ImageMapper;
import com.aud.mapper.NavMenuMapper;
import com.aud.mapper.ProjectMapper;
import com.aud.pojo.Image;
import com.aud.pojo.NavMenu;
import com.aud.pojo.Project;
import com.aud.tool.Utils;
import com.google.gson.Gson;

@Controller("adminProjects")
@RequestMapping("/admin/projectCases/{caseId}/projects")
public class ProjectsController {
	@Autowired
	private NavMenuMapper navMenuMapper;
	@Autowired
	private ProjectMapper projectMapper;
	@Autowired
	private ImageMapper imageMapper;

    @ModelAttribute
    public void setCurrentModule(ModelMap model) {  
       model.addAttribute("currentModule", "22");  
    }
	@RequestMapping(value = "/{id}/delete", method = RequestMethod.POST)
	public String delete(@PathVariable("id") int id, @PathVariable("caseId") int caseId) {
		this.projectMapper.deleteByPrimaryKey(id);
		NavMenu secondNavMenu = this.navMenuMapper.selectByPrimaryKey(caseId);
		NavMenu firstNavMenu = this.navMenuMapper.selectByPrimaryKey(secondNavMenu.getParentNav());
		return "redirect:/admin/projectCases/" + firstNavMenu.getId()+"/projectSecondNavMenus/"+ caseId;
	}

	@RequestMapping(value = "/{id}/edit", method = RequestMethod.GET)
	public String edit(@PathVariable("id") int id, ModelMap model,@PathVariable("caseId") int caseId) {
		model.addAttribute("project", this.projectMapper.selectByPrimaryKey(id));
		NavMenu secondNavMenu = this.navMenuMapper.selectByPrimaryKey(caseId);
		model.addAttribute("firstNavMenu", this.navMenuMapper.selectByPrimaryKey(secondNavMenu.getParentNav()));
		model.addAttribute("secondNavMenu", secondNavMenu);
		model.addAttribute("images", this.imageMapper.selectByResourceId(id));
		return "admin/projects/edit";
	}

	@RequestMapping(value = "/{id}/update", method = RequestMethod.POST)
	public String update(@PathVariable("caseId") int caseId, @PathVariable("id") int id, Project project,
			String[] imgUrls) {
		project.setContent(Utils.replaceFontFamily(project.getContent()));
		project.setService(Utils.replaceFontFamily(project.getService()));
		this.projectMapper.updateByPrimaryKeySelective(project);
		if (imgUrls != null) {
			for (String imgUrl : imgUrls) {
				Image image = new Image();
				image.setImgUrl(imgUrl);
				image.setResourceId(id);
				this.imageMapper.insertSelective(image);
			}
		}
		NavMenu secondNavMenu = this.navMenuMapper.selectByPrimaryKey(caseId);
		NavMenu firstNavMenu = this.navMenuMapper.selectByPrimaryKey(secondNavMenu.getParentNav());
		return "redirect:/admin/projectCases/" + firstNavMenu.getId()+"/projectSecondNavMenus/"+ caseId;
	}

	@RequestMapping(value = "/new", method = RequestMethod.GET)
	public String newPage(@PathVariable("caseId") int caseId, ModelMap model) {
		NavMenu secondNavMenu = this.navMenuMapper.selectByPrimaryKey(caseId);
		model.addAttribute("firstNavMenu", this.navMenuMapper.selectByPrimaryKey(secondNavMenu.getParentNav()));
		model.addAttribute("secondNavMenu", secondNavMenu);
		return "admin/projects/new";
	}

	@RequestMapping(value = "", method = RequestMethod.POST)
	public String create(@PathVariable("caseId") int caseId, Project project, String[] imgUrls, Locale locale) {
		project.setLang(locale.getLanguage());
		project.setContent(Utils.replaceFontFamily(project.getContent()));
		project.setService(Utils.replaceFontFamily(project.getService()));
		project.setNavMenuId(caseId);
		this.projectMapper.insertSelective(project);
		int projectId = this.projectMapper.getMaxId();
		if(imgUrls!=null){
		  for (String imgUrl : imgUrls) {
			Image image = new Image();
			image.setImgUrl(imgUrl);
			image.setResourceId(projectId);
			this.imageMapper.insertSelective(image);
		  }
		}
		NavMenu secondNavMenu = this.navMenuMapper.selectByPrimaryKey(caseId);
		NavMenu firstNavMenu = this.navMenuMapper.selectByPrimaryKey(secondNavMenu.getParentNav());
		return "redirect:/admin/projectCases/" + firstNavMenu.getId()+"/projectSecondNavMenus/"+ caseId;
	}
}
