package com.aud.client.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aud.mapper.NavMenuMapper;
import com.aud.mapper.ProjectMapper;

@Controller("clientProjectCase")
@RequestMapping("/client/projectCases")
public class ProjectCasesController extends BaseController {
	@Autowired
	private NavMenuMapper navMenuMapper;
	@Autowired
	private ProjectMapper projectMapper;

	@RequestMapping(value = "/{id}", method=RequestMethod.GET)
	public String show(@PathVariable("id") int id, ModelMap model){
		model.addAttribute("navMenu", this.navMenuMapper.selectByPrimaryKey(id));
		model.addAttribute("projects", this.projectMapper.getByNavMenuId(id));

		return "client/projectCases/show";
	}
}
