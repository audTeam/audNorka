package com.aud.client.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/client/teams")
public class TeamsController {
	@RequestMapping(value="", method=RequestMethod.GET)
	public String index(){
		return "client/teams/index";
	}
	
	@RequestMapping(value="/{personId}", method=RequestMethod.GET)
	public String show(@PathVariable("personId") String personId){
		return "client/teams/show";
	}
}
