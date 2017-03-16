package com.aud.client.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/client/searchs")
public class SearchsController {
	@RequestMapping(value = "", method = RequestMethod.GET)
	private String create(@RequestParam("keyword")String keyword) {
      return "client/searchs";
	}
}
