package com.aud.client.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aud.mapper.NavMenuMapper;
import com.aud.mapper.TeamMemberMapper;
import com.aud.mapper.TeamMemberProjectMapper;
import com.google.gson.Gson;

@Controller("clientTeamMembers")
@RequestMapping("/client/teams/{teamId}/teamMembers")
public class TeamMembersController extends BaseController {
	@Autowired
	private NavMenuMapper navMenuMapper;
	@Autowired
	private TeamMemberMapper teamMemberMapper;
	@Autowired
	private TeamMemberProjectMapper teamMemberProjectMapper;

	@RequestMapping(value="", method=RequestMethod.GET)
	public String index(@PathVariable("teamId") int teamId, ModelMap model){
		model.addAttribute("teamMembers", this.teamMemberMapper.getTeamMemberByTeamId(teamId));
		model.addAttribute("team", this.navMenuMapper.selectByPrimaryKey(teamId));
		return "client/teamMembers/index";
	}

	@RequestMapping(value="/{id}", method=RequestMethod.GET)
	public String show(@PathVariable("teamId") int teamId, @PathVariable("id") int id, ModelMap model){
		model.addAttribute("teamMember", this.teamMemberMapper.selectByPrimaryKey(id));
		model.addAttribute("teamMembers", this.teamMemberMapper.getTeamMemberByTeamId(teamId));
		model.addAttribute("projects", this.teamMemberProjectMapper.selectByTeamMemberId(id));
		return "client/teamMembers/show";
	}
}
