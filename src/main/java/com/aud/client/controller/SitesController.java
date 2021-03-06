package com.aud.client.controller;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.shiro.authz.annotation.RequiresAuthentication;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aud.mapper.BannerMapper;
import com.aud.mapper.NewsMapper;
import com.aud.pojo.News;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping({"/sites", "/"})
public class SitesController extends BaseController {
    @Autowired
    private BannerMapper bannerMapper;

    @RequestMapping(value = "", method=RequestMethod.GET)
    public String show(ModelMap model, Locale locale){
        model.addAttribute("banners", this.bannerMapper.all("sites", locale.getLanguage()));

        return "client/sites/show";
    }
}
