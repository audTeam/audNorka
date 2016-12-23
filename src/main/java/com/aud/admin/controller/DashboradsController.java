package com.aud.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/dashborad")
public class DashboradsController {
	@RequestMapping("")
	public String show(){
		return "admin/dashborad/show";
	}
}
