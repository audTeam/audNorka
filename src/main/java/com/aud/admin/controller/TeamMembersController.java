package com.aud.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aud.mapper.NavMenuMapper;
import com.aud.mapper.TeamMemberMapper;

@Controller("adminTeamMembers")
@RequestMapping("/admin/teams/{teamId}/teamMembers")
public class TeamMembersController {
	@Autowired
	private NavMenuMapper navMenuMapper;
	@Autowired
	private TeamMemberMapper teamMemberMapper;

	@RequestMapping(value="", method=RequestMethod.GET)
	public String index(@PathVariable("teamId") int teamId, ModelMap model){
    model.addAttribute("team", this.navMenuMapper.selectByPrimaryKey(teamId));
    model.addAttribute("teamMembers", this.teamMemberMapper.getTeamMemberByTeamId(teamId));
		return "admin/teamMembers/index";
	}

	@RequestMapping(value="/new", method=RequestMethod.GET)
	public String newPage(@PathVariable("teamId") int teamId, ModelMap model){
		model.addAttribute("team", this.navMenuMapper.selectByPrimaryKey(teamId));
		return "adminteamMembers/new";
	}
}
