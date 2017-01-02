package com.aud.client.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/client/projects")
public class ProjectsController {

	@RequestMapping(value="", method=RequestMethod.GET)
	public String index(){
		return "client/projects/index";
	}

	@RequestMapping(value="/navMenus/{navMenuId}/projects/{projectId}", method=RequestMethod.GET)
	public String showCaseDetail(@PathVariable("navMenuId") String navMenuId){
		return "client/projects/caseDetail";
	}
	
	@RequestMapping(value="/{navMenuId}", method=RequestMethod.GET)
	public String show(@PathVariable("navMenuId") String navMenuId){
		return "client/projects/show";
	}
}
