package com.aud.admin.controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.aud.mapper.NavMenuMapper;
import com.aud.mapper.TeamMemberMapper;
import com.aud.pojo.TeamMember;
import com.aud.tool.Utils;

//@Controller("adminTeamMembers")
@RequestMapping("/admin/teams/{teamId}/teamMembers")
public class TeamMembersController {
	@Autowired
	private NavMenuMapper navMenuMapper;
	@Autowired
	private TeamMemberMapper teamMemberMapper;

	@RequestMapping(value = "", method = RequestMethod.GET)
	public String index(@PathVariable("teamId") int teamId, ModelMap model) {
		model.addAttribute("team", this.navMenuMapper.selectByPrimaryKey(teamId));
		model.addAttribute("teamMembers", this.teamMemberMapper.getTeamMemberByTeamId(teamId));
		return "admin/teamMembers/index";
	}

	@RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
	public String delete(@PathVariable("teamId") int teamId, @PathVariable("id") int id) {
		this.teamMemberMapper.deleteByPrimaryKey(id);
		return "redirect:/admin/teams/" + teamId + "/teamMembers";
	}

	@RequestMapping(value = "", method = RequestMethod.GET)
	public String create(@PathVariable("teamId") int teamId, TeamMember teamMember, MultipartFile file, MultipartFile personFile, HttpServletRequest request)
			throws IllegalStateException, IOException {
		teamMember.setImgUrl(Utils.saveFile(file, request));
		teamMember.setCard(Utils.saveFile(personFile, request));
		teamMember.setNavMenuId(teamId);
		teamMember.setLang("zh");
		teamMember.setCreatedAt(new Date());

		this.teamMemberMapper.insertSelective(teamMember);
		return "redirect:/admin/teams/" + teamMember.getNavMenuId() + "/teamMembers";
	}

	@RequestMapping(value = "/{id}/edit", method = RequestMethod.POST)
	public String edit(@PathVariable("teamId") int teamId, @PathVariable("id") int id, ModelMap model) {
		model.addAttribute("team", this.navMenuMapper.selectByPrimaryKey(teamId));
		model.addAttribute("teamMember", this.teamMemberMapper.selectByPrimaryKey(id));
		return "admin/teamMembers/edit";
	}
	
	@RequestMapping(value = "/{id}", method = RequestMethod.PATCH)
	public String update(@PathVariable("teamId") int teamId, @PathVariable("id") int id, TeamMember teamMember) {
		teamMember.setUpdatedAt(new Date());
		this.teamMemberMapper.updateByPrimaryKeySelective(teamMember);
		return "redirect:/admin/teams/" + teamId + "/teamMembers";
	}

	@RequestMapping(value = "/new", method = RequestMethod.GET)
	public String newPage(@PathVariable("teamId") int teamId, ModelMap model) {
		model.addAttribute("team", this.navMenuMapper.selectByPrimaryKey(teamId));
		return "admin/teamMembers/new";
	}
}
