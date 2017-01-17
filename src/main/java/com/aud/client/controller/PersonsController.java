package com.aud.client.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/client/persons")
public class PersonsController extends BaseController {
	@RequestMapping(value="", method=RequestMethod.GET)
	public String index(){
		return "";
	}

	@RequestMapping(value="/{id}", method=RequestMethod.GET)
	public String show(@PathVariable("id") int id){
		return "client/teams/person/show";
	}
}
