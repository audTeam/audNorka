package com.aud.client.controller;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.aud.mapper.BannerMapper;
import com.aud.mapper.NewsMapper;
import com.google.gson.Gson;
@Controller
@RequestMapping("/sites")
public class SitesController extends BaseController {
    @Autowired
    private BannerMapper bannerMapper;
    @Autowired
    private NewsMapper newsMapper;
	private static Logger logger = Logger.getLogger(SitesController.class);

    @RequestMapping(value = "", method=RequestMethod.GET)
    public String show(ModelMap model){
        model.addAttribute("banners", this.bannerMapper.all());
        model.addAttribute("news", this.newsMapper.all(1, 4));
        return "client/sites/show";
    }
}