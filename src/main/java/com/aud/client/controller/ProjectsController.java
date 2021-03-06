package com.aud.client.controller;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aud.mapper.BannerMapper;
import com.aud.mapper.ImageMapper;
import com.aud.mapper.ProjectMapper;
import com.aud.mapper.TeamMemberMapper;
import com.aud.mapper.TeamMemberProjectMapper;
import com.aud.pojo.Banner;
import com.aud.pojo.Image;
import com.aud.pojo.Project;
import com.aud.pojo.TeamMemberProject;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

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
	@Autowired
    private BannerMapper bannerMapper;

	@RequestMapping(value="loadMore", method=RequestMethod.GET)
	@ResponseBody
	public Object loadMore(@RequestParam(value="pageNo", required=false, defaultValue="1") Integer pageNo,
			@RequestParam(value="pageSize", required=false, defaultValue="12") Integer pageSize,
			Locale locale){
		List<Map<String, Object>> collection = new ArrayList<Map<String, Object>>();
		
		PageHelper.startPage(pageNo, pageSize);
		List<Project> list = this.projectMapper.all(locale.getLanguage());
		PageInfo<Project> page = new PageInfo<Project>(list);

		Iterator<Project> iter = page.getList().iterator();
		while(iter.hasNext()){
			Project project = iter.next();
			Map<String, Object> item = new HashMap<>();
			item.put("project", project);
			item.put("images", this.imageMapper.selectByResourceId(project.getId()));
			collection.add(item);
		}
		
		Map<String, Object> result = new HashMap<>();
		result.put("collection", collection);
		result.put("page", page);
		
		return result;
	}
	
	@RequestMapping(value="", method=RequestMethod.GET)
	public String index(ModelMap model,
			@RequestParam(value="pageNo", required=false, defaultValue="1") Integer pageNo,
			@RequestParam(value="pageSize", required=false, defaultValue="12") Integer pageSize,
			Locale locale){
		List<Map<String, Object>> collection = new ArrayList<Map<String, Object>>();
		
		PageHelper.startPage(pageNo, pageSize);
		List<Project> list = this.projectMapper.all(locale.getLanguage());
		PageInfo<Project> page = new PageInfo<Project>(list);
		model.addAttribute("pages", page);
    
		Iterator<Project> iter = page.getList().iterator();
		while(iter.hasNext()){
			Project project = iter.next();
			Map<String, Object> item = new HashMap<>();
			item.put("project", project);
			item.put("images", this.imageMapper.selectByResourceId(project.getId()));
			collection.add(item);
		}
		model.addAttribute("collection", collection);
		model.addAttribute("banners", this.bannerMapper.all("projectBanners", locale.getLanguage()));
		model.addAttribute("loadMoreUrl", "/client/projects/loadMore");
		
		return "client/projects/index";
	}

	@RequestMapping(value="/{id}", method=RequestMethod.GET)
	public String show(@PathVariable("id") int id, ModelMap model, Locale locale){
		Project project = this.projectMapper.selectByPrimaryKey(id);
		model.addAttribute("project", project);
		
		List<Banner> banners = new ArrayList<>();
		List<Image> images = this.imageMapper.selectByResourceId(id);
		model.addAttribute("images", images);
		for(Image image:images){
			Banner banner = new Banner();
			banner.setImgUrl(image.getImgUrl());
			banner.setName(project.getName());
			banner.setAddress(project.getAddress());
			banners.add(banner);
		}
		model.addAttribute("banners", banners);

		List<Map<String, Object>> collection = new ArrayList<Map<String, Object>>();

		//PageHelper.startPage(1, 6);
	    List<Project> list = this.projectMapper.getByNavMenuId(project.getNavMenuId(), locale.getLanguage());
	    //PageInfo<Project> page = new PageInfo<Project>(list);

		Iterator<Project> iter = list.iterator();
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
