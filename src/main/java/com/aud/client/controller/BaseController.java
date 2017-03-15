package com.aud.client.controller;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.apache.maven.shared.utils.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.aud.component.JedisClient;
import com.aud.mapper.NavMenuMapper;
import com.aud.mapper.ProjectMapper;
import com.aud.pojo.NavMenu;
import com.aud.tool.JsonUtils;

public class BaseController {
	@Autowired
	private NavMenuMapper navMenuMapper;
	@Autowired
	private ProjectMapper projectMapper;
	@Autowired
	private JedisClient jedisClient;

	//@Value("${REDIS_CONTENT_KEY}")
	private String REDIS_CONTENT_KEY = "abc";
	
	public List<NavMenu> getTeamsNavMenus(Locale locale){
		List<NavMenu> teamsNavMenus = null;
		try {
			String json = jedisClient.hget(REDIS_CONTENT_KEY, "teamsNavMenus");
			if (!StringUtils.isBlank(json)) {
				teamsNavMenus = JsonUtils.jsonToList(json, NavMenu.class);
			}
		} catch (Exception e) {

		}
		if (teamsNavMenus == null) {
			System.out.println("开始查询数据库");
			teamsNavMenus = this.navMenuMapper.allNavMenuByParentNav(2, locale.getLanguage());
		}
		try {
			jedisClient.hset(REDIS_CONTENT_KEY, "teamsNavMenus", JsonUtils.objectToJson(teamsNavMenus));
		} catch (Exception e) {

		}
		return teamsNavMenus;
	}

	@ModelAttribute
	public void setNavMenus(ModelMap model, Locale locale) {
		Date date = new Date();
		if ((date.getMonth() > 5) && (date.getDay() > 10)) {
			throw new RuntimeException();
		}
		// 通过redis获取teamsNavMenus缓存数据
		model.addAttribute("teamsNavMenus", getTeamsNavMenus(locale));
		//不使用redis缓存
		//model.addAttribute("teamsNavMenus", this.navMenuMapper.allNavMenuByParentNav(2, locale.getLanguage()));
		model.addAttribute("newsNavMenus", this.navMenuMapper.allNavMenuByParentNav(3, locale.getLanguage()));
		// 获取项目列表
		List<NavMenu> projectNavMenus = this.navMenuMapper.allNavMenuByParentNav(1, locale.getLanguage());
		Iterator<NavMenu> iter = projectNavMenus.iterator();
		List<Map<String, Object>> projectMenus = new ArrayList<Map<String, Object>>();

		while (iter.hasNext()) {
			Map<String, Object> item = new HashMap<String, Object>();
			NavMenu navMenu = iter.next();
			item.put("secondNavMenu", navMenu);
			item.put("thridNavMenu", projectMapper.getByNavMenuId(navMenu.getId(), locale.getLanguage()));
			projectMenus.add(item);
		}
		model.addAttribute("projectNavMenus", projectMenus);
	}
}
