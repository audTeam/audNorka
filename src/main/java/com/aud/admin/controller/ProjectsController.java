package com.aud.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("adminProjects")
@RequestMapping("/admin/projects")
public class ProjectsController {
	
	@RequestMapping(value="", method=RequestMethod.GET)
	public String index(){
		return "admin/projects/index";
	}

	@RequestMapping(value="/{projectId}", method=RequestMethod.GET)
	public String show(){
		return "admin/projects/show";
	}
}
