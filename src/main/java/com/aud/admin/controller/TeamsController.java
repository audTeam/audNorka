package com.aud.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aud.mapper.NavMenuMapper;
import com.aud.mapper.TeamMemberMapper;
import com.aud.pojo.NavMenu;

@Controller("adminTeams")
@RequestMapping("/admin/teams")
public class TeamsController {
	@Autowired
	private NavMenuMapper navMenuMapper;

	@RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
	public String delete(@PathVariable("id") int id) {
		this.navMenuMapper.deleteByPrimaryKey(id);
		return "redirect:/admin/teams/edit";
	}
	
	@RequestMapping(value = "/{id}/edit", method = RequestMethod.GET)
	public String edit(@PathVariable("id") int id) {
		return "admin/teams/edit";
	}

	@RequestMapping(value = "/new", method = RequestMethod.GET)
	public String newPage() {
		return "admin/teams/new";
	}

	@RequestMapping(value = "", method = RequestMethod.GET)
	public String index(ModelMap model) {
		model.addAttribute("teams", this.navMenuMapper.allNavMenuByParentNav(2));
		return "admin/teams/index";
	}
	
	@RequestMapping(value = "", method = RequestMethod.POST)
	public String create(NavMenu navMenu) {
		navMenu.setParentNav(2);
		this.navMenuMapper.insertSelective(navMenu);
		return "admin/teams";
	}
}
