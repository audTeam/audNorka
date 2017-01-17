package com.aud.client.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aud.mapper.NavMenuMapper;
import com.aud.mapper.TeamMemberMapper;

@Controller("clientTeams")
@RequestMapping("/client/teams")
public class TeamsController extends BaseController{
	@Autowired
	private NavMenuMapper navMenuMapper;
	@Autowired
	private TeamMemberMapper teamMemberMapper;

	@RequestMapping(value="", method=RequestMethod.GET)
	public String index(ModelMap model){
		model.addAttribute("teamMembers", this.teamMemberMapper.all());
		return "client/teams/index";
	}
	
	@RequestMapping(value="/{id}", method=RequestMethod.GET)
	public String show(@PathVariable("id") int id, ModelMap model){
		model.addAttribute("teamMembers", this.teamMemberMapper.getTeamMemberByTeamId(id));
		model.addAttribute("team", this.navMenuMapper.selectByPrimaryKey(id));
		return "client/teams/show";
	}
}
