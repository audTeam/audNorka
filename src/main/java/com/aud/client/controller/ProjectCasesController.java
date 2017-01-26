package com.aud.client.controller;


import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aud.mapper.ImageMapper;
import com.aud.mapper.NavMenuMapper;
import com.aud.mapper.ProjectMapper;
import com.aud.pojo.Project;
import com.google.gson.Gson;

@Controller("clientProjectCase")
@RequestMapping("/client/projectCases")
public class ProjectCasesController extends BaseController {
	@Autowired
	private NavMenuMapper navMenuMapper;
	@Autowired
	private ProjectMapper projectMapper;
	@Autowired
	private ImageMapper imageMapper;

	@RequestMapping(value = "/{id}", method=RequestMethod.GET)
	public String show(@PathVariable("id") int id, ModelMap model){
		model.addAttribute("navMenu", this.navMenuMapper.selectByPrimaryKey(id));
		List<Map<String, Object>> collection = new LinkedList<Map<String, Object>>();
		List<Project> projects = this.projectMapper.getByNavMenuId(id);
		Iterator<Project> iter = projects.iterator();
		while(iter.hasNext()){
			Project project = iter.next();
			Map<String, Object> item = new HashMap<>();
			item.put("project", project);
			item.put("imags", this.imageMapper.selectByResourceId(project.getId()));
			collection.add(item);
		}
		model.addAttribute("collection", collection);
		System.out.println("----------------collection: "+new Gson().toJson(collection));
		model.addAttribute("projects", this.projectMapper.getByNavMenuId(id));

		return "client/projectCases/show";
	}
}
