package com.aud.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aud.component.JedisClient;
import com.aud.mapper.NavMenuMapper;
import com.aud.pojo.NavMenu;
import com.aud.service.INavMenuService;

@Service
public class NavMenuServiceImpl implements INavMenuService {
	@Autowired
    private NavMenuMapper navMenuMapper;
	@Autowired
	private JedisClient jedisClient;
	private String REDIS_CONTENT_KEY = "cacheNavMenus";
	
	public void clearCache(){
		jedisClient.hdele(REDIS_CONTENT_KEY, "teamsNavMenus");
		jedisClient.hdele(REDIS_CONTENT_KEY, "newsNavMenus");
		jedisClient.hdele(REDIS_CONTENT_KEY, "projectNavMenus");
	}

	@Override
	public int deleteByPrimaryKey(Integer id) {
		clearCache();
		return navMenuMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insertSelective(NavMenu record) {
		clearCache();
		return navMenuMapper.insertSelective(record);
	}

	@Override
	public int updateByPrimaryKeySelective(NavMenu record) {
		clearCache();
		return navMenuMapper.updateByPrimaryKeySelective(record);
	}

}
