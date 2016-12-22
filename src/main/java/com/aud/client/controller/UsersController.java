package com.aud.client.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aud.pojo.User;

@Controller
@RequestMapping("/admin/users")
public class UsersController {
	
	@RequestMapping(value="", method=RequestMethod.POST)
	public String create(User user){
		return "admin/users/index";
	}
	
	@RequestMapping(value="/new", method=RequestMethod.GET)
	public String newPage(){
		return "admin/users/new";
	}
}
