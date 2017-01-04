package com.aud.client.controller;

import org.springframework.beans.factory.annotation.Autowired;

import com.aud.mapper.BannerMapper;
import com.aud.mapper.NavMenuMapper;
import com.aud.mapper.ProjectMapper;

public class BaseController {
	@Autowired
	private BannerMapper bannerMapper;
	@Autowired
	private NavMenuMapper navMenuMapper;
	@Autowired
	private ProjectMapper projectMapper;

}
