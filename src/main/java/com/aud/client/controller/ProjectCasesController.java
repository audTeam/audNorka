package com.aud.client.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
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
import com.aud.mapper.NavMenuMapper;
import com.aud.mapper.ProjectMapper;
import com.aud.pojo.NavMenu;
import com.aud.pojo.Project;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

/**
 * 此为暂时需要注释的
 * 
 * @author Administrator
 *
 */
@Controller("clientProjectCase")
@RequestMapping("/client/projectCases")
public class ProjectCasesController extends BaseController {
	@Autowired
	private NavMenuMapper navMenuMapper;
	@Autowired
	private ProjectMapper projectMapper;
	@Autowired
	private ImageMapper imageMapper;
	@Autowired
	private BannerMapper bannerMapper;

	@RequestMapping(value = "/loadMore/{firstNavMenu}", method = RequestMethod.GET)
	@ResponseBody
	public Object showFirstNavMenuLoadMore(@PathVariable("firstNavMenu") int firstNavMenu, ModelMap model, Locale locale,
			@RequestParam(value = "pageNo", required = false, defaultValue = "1") Integer pageNo,
			@RequestParam(value = "pageSize", required = false, defaultValue = "12") Integer pageSize) {
		List<Map<String, Object>> collection = new LinkedList<Map<String, Object>>();

		List<NavMenu> navMenus = navMenuMapper.selectByParentId(firstNavMenu);
		List<Integer> navMenuIds = new ArrayList<>();
		for (NavMenu navMenu : navMenus) {
			navMenuIds.add(navMenu.getId());
		}

		PageHelper.startPage(pageNo, pageSize);
		if(navMenuIds.size()<1){
			navMenuIds.add(Integer.MIN_VALUE);
		}
		List<Project> list = this.projectMapper.getByNavMenuIds(navMenuIds, locale.getLanguage());
		
		PageInfo<Project> page = new PageInfo<Project>(list);

		for (Project project : page.getList()) {
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

	@RequestMapping(value = "/loadMore/{firstNavMenu}/{secondNavMenuId}", method = RequestMethod.GET)
	@ResponseBody
	public Object showLoadMore(@PathVariable("secondNavMenuId") int secondNavMenuId, ModelMap model, Locale locale,
			@RequestParam(value = "pageNo", required = false, defaultValue = "1") Integer pageNo,
			@RequestParam(value = "pageSize", required = false, defaultValue = "12") Integer pageSize) {
		List<Map<String, Object>> collection = new LinkedList<Map<String, Object>>();
		PageHelper.startPage(pageNo, pageSize);

		List<Project> list = this.projectMapper.getByNavMenuId(secondNavMenuId, locale.getLanguage());
		PageInfo<Project> page = new PageInfo<Project>(list);

		Iterator<Project> iter = page.getList().iterator();
		while (iter.hasNext()) {
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

	@RequestMapping(value = "/{firstNavMenu}", method = RequestMethod.GET)
	public String showFirstNavMenu(@PathVariable("firstNavMenu") int firstNavMenu, ModelMap model, Locale locale,
			@RequestParam(value = "pageNo", required = false, defaultValue = "1") Integer pageNo,
			@RequestParam(value = "pageSize", required = false, defaultValue = "12") Integer pageSize) {
		List<Map<String, Object>> collection = new LinkedList<Map<String, Object>>();

		List<NavMenu> navMenus = navMenuMapper.selectByParentId(firstNavMenu);
		List<Integer> navMenuIds = new ArrayList<>();
		for (NavMenu navMenu : navMenus) {
			navMenuIds.add(navMenu.getId());
		}

		PageHelper.startPage(pageNo, pageSize);
		if(navMenuIds.size()<1){
			navMenuIds.add(Integer.MIN_VALUE);
		}
		List<Project> list = this.projectMapper.getByNavMenuIds(navMenuIds, locale.getLanguage());
		
		PageInfo<Project> page = new PageInfo<Project>(list);
		model.addAttribute("pages", page);

		for (Project project : page.getList()) {
			Map<String, Object> item = new HashMap<>();
			item.put("project", project);
			item.put("images", this.imageMapper.selectByResourceId(project.getId()));
			collection.add(item);
		}

		model.addAttribute("collection", collection);
		model.addAttribute("navMenu", this.navMenuMapper.selectByPrimaryKey(firstNavMenu));
		model.addAttribute("banners", this.bannerMapper.all("projectBanners", locale.getLanguage()));
		model.addAttribute("loadMoreUrl", "/client/projectCases/loadMore/"+firstNavMenu);
		return "client/projects/index";
	}

	@RequestMapping(value = "/{firstNavMenu}/{secondNavMenuId}", method = RequestMethod.GET)
	public String show(@PathVariable("secondNavMenuId") int secondNavMenuId, ModelMap model, Locale locale,
			@RequestParam(value = "pageNo", required = false, defaultValue = "1") Integer pageNo,
			@RequestParam(value = "pageSize", required = false, defaultValue = "12") Integer pageSize,
			@PathVariable("firstNavMenu") int firstNavMenu) {
		List<Map<String, Object>> collection = new LinkedList<Map<String, Object>>();
		PageHelper.startPage(pageNo, pageSize);

		List<Project> list = this.projectMapper.getByNavMenuId(secondNavMenuId, locale.getLanguage());
		PageInfo<Project> page = new PageInfo<Project>(list);
		model.addAttribute("pages", page);

		Iterator<Project> iter = page.getList().iterator();
		while (iter.hasNext()) {
			Project project = iter.next();
			Map<String, Object> item = new HashMap<>();
			item.put("project", project);
			item.put("images", this.imageMapper.selectByResourceId(project.getId()));
			collection.add(item);
		}
		model.addAttribute("banners", this.bannerMapper.all("projectBanners", locale.getLanguage()));
		model.addAttribute("collection", collection);
		model.addAttribute("navMenu", this.navMenuMapper.selectByPrimaryKey(secondNavMenuId));
		model.addAttribute("loadMoreUrl", "/client/projectCases/loadMore/"+firstNavMenu+"/"+secondNavMenuId);
		return "client/projects/index";
	}
}
