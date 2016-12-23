package com.aud.client.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/client/about")
public class AboutUsController {
	
	@RequestMapping(value="", method=RequestMethod.GET)
	public String show(){
		return "client/aboutUs/show";
	}
}
