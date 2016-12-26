package com.aud.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("adminTeams")
@RequestMapping("/admin/teams")
public class TeamsController {
	
	@RequestMapping(value="", method=RequestMethod.GET)
	public String index(){
		return "admin/teams/index";
	}
	
	@RequestMapping(value="/{personId}", method=RequestMethod.GET)
	public String show(){
		return "admin/teams/show";
	}
}
