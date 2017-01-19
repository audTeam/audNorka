package com.aud.client.controller;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aud.mapper.ImageMapper;
import com.aud.mapper.ProjectMapper;
import com.aud.mapper.TeamMemberMapper;
import com.aud.mapper.TeamMemberProjectMapper;
import com.aud.pojo.Project;
import com.aud.pojo.TeamMemberProject;
import com.google.gson.Gson;

@Controller
@RequestMapping("/client/projects")
public class ProjectsController extends BaseController {
	@Autowired
	private ProjectMapper projectMapper;
	@Autowired
	private ImageMapper imageMapper;
	@Autowired
	private TeamMemberProjectMapper teamMemberProjectMapper;
	@Autowired
	private TeamMemberMapper teamMemberMapper;

	@RequestMapping(value="", method=RequestMethod.GET)
	public String index(ModelMap model){
		List<Map<String, Object>> collection = new ArrayList<Map<String, Object>>();
		Iterator<Project> iter = this.projectMapper.all().iterator();
		while(iter.hasNext()){
			Project project = iter.next();
			Map<String, Object> item = new HashMap<>();
			item.put("project", project);
			item.put("images", this.imageMapper.selectByResourceId(project.getId()));
			collection.add(item);
		}
		model.addAttribute("collection", collection);
		
		return "client/projects/index";
	}

	@RequestMapping(value="/{id}", method=RequestMethod.GET)
	public String show(@PathVariable("id") int id, ModelMap model){
		Project project = this.projectMapper.selectByPrimaryKey(id);
		model.addAttribute("project", project);
		model.addAttribute("images", this.imageMapper.selectByResourceId(id));

		List<Map<String, Object>> collection = new ArrayList<Map<String, Object>>();
		Iterator<Project> iter = this.projectMapper.getByNavMenuId(project.getNavMenuId()).iterator();
		while(iter.hasNext()){
			project = iter.next();
			Map<String, Object> item = new HashMap<>();
			item.put("project", project);
			item.put("images", this.imageMapper.selectByResourceId(project.getId()));
			collection.add(item);
		}
		model.addAttribute("collection", collection);
		
		List<Map<String, Object>> teamMembercollection = new ArrayList<Map<String, Object>>();
		Iterator<TeamMemberProject> teamMemberProjectIter = this.teamMemberProjectMapper.selectByProjectId(id).iterator();
		while(teamMemberProjectIter.hasNext()){
			TeamMemberProject teamMemberProject = teamMemberProjectIter.next();
			Map<String, Object> item = new HashMap<>();
			item.put("teamMember", this.teamMemberMapper.selectByPrimaryKey(teamMemberProject.getTeamMemberId()));
			teamMembercollection.add(item);
		}
		model.addAttribute("teamMembercollection", teamMembercollection);
		return "client/projects/show";
	}
}
