package com.aud.client.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
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
import com.aud.mapper.TeamMemberMapper;
import com.aud.mapper.TeamMemberProjectMapper;
import com.aud.pojo.Image;
import com.aud.pojo.Project;
import com.aud.pojo.TeamMember;
import com.aud.pojo.TeamMemberProject;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.google.gson.Gson;

@Controller("clientTeamMembers")
@RequestMapping("/client/teamMembers")
public class TeamMembersController extends BaseController {
	@Autowired
	private TeamMemberMapper teamMemberMapper;
	@Autowired
	private TeamMemberProjectMapper teamMemberProjectMapper;
	@Autowired
	private ProjectMapper projectMapper;
	@Autowired
	private ImageMapper imageMapper;

	@RequestMapping(value="", method=RequestMethod.GET)
	public String index(ModelMap model, Locale locale){
		model.addAttribute("teamMembers", this.teamMemberMapper.getTeamMemberByLang(locale.getLanguage()));
		return "client/teamMembers/index";
	}

	//TODO 此处多表查询需要做优化处理
	@RequestMapping(value="/{id}", method=RequestMethod.GET)
	public String show(@PathVariable("id") int id, ModelMap model, Locale locale){
		model.addAttribute("teamMember", this.teamMemberMapper.selectByPrimaryKey(id));
		
		List<TeamMemberProject> featureWorks = this.teamMemberProjectMapper.selectByTeamMemberId(id);
		List<Map<String, Object>> relateProject = new ArrayList<>();

		for(TeamMemberProject featureWork : featureWorks){
			Map<String, Object> item = new HashMap<>();
			Project project = projectMapper.selectByPrimaryKey(featureWork.getProjectId());
            item.put("project", project);
            List<Image> images = imageMapper.selectByResourceId(project.getId());
            item.put("images", images);
			relateProject.add(item);
		}

		model.addAttribute("projects", relateProject);

		return "client/teamMembers/show";
	}
}
