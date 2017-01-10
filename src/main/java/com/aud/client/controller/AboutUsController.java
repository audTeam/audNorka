package com.aud.client.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/client/aboutUs")
public class AboutUsController {

	@RequestMapping(value="", method=RequestMethod.GET)
	public String show(){
		return "client/aboutUs/show";
	}

	@RequestMapping(value="/service", method=RequestMethod.GET)
	public String showService(){
		return "client/aboutUs/service";
	}

	@RequestMapping(value="/contactUs", method=RequestMethod.GET)
	public String showContactUs(){
		return "client/aboutUs/contact-us";
	}
}
