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

import com.aud.mapper.NavMenuMapper;
import com.aud.mapper.ProjectMapper;
import com.aud.pojo.NavMenu;
import com.aud.tool.Utils;

@Controller
@RequestMapping("/admin/projectCases")
public class ProjectCasesController {
	@Autowired
	private NavMenuMapper navMenuMapper;
	@Autowired
	private ProjectMapper projectMapper;

	@RequestMapping(value = "/{id}", method=RequestMethod.GET)
	public String show(@PathVariable("id") int id, ModelMap model){
		model.addAttribute("navMenu", this.navMenuMapper.selectByPrimaryKey(id));
		model.addAttribute("projects", this.projectMapper.getByNavMenuId(id));
		return "admin/projectCases/show";
	}

	@RequestMapping(value = "", method=RequestMethod.GET)
	public String index(ModelMap model){
		model.addAttribute("navMenus", this.navMenuMapper.allNavMenuByParentNav(1));
		return "admin/projectCases/index";
	}

	@RequestMapping(value = "/new", method=RequestMethod.GET)
	public String newPage(){
		return "admin/projectCases/new";
	}
	
	@RequestMapping(value = "/{id}", method=RequestMethod.DELETE)
	public String delete(@PathVariable("id") int id){
		this.navMenuMapper.deleteByPrimaryKey(id);
		return "redirect:/admin/projectCases";
	}

	@RequestMapping(value = "", method=RequestMethod.POST)
	public String create(NavMenu navMenu, MultipartFile file, HttpServletRequest request) throws IllegalStateException, IOException{
		navMenu.setImgUrl(Utils.saveFile(file, request));
		navMenu.setParentNav(1);
		navMenu.setLang("zh");

		this.navMenuMapper.insertSelective(navMenu);
		return "redirect:/admin/projectCases";
	}
}
