package com.aud.client.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/admin/users")
public class UsersController extends BaseController {
	
	@RequestMapping(value="", method=RequestMethod.POST)
	public String create(){
		return "admin/users/index";
	}
	
	@RequestMapping(value="/new", method=RequestMethod.GET)
	public String newPage(){
		return "admin/users/new";
	}
}
