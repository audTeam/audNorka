package com.aud.client.controller;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.aud.mapper.BannerMapper;
import com.aud.mapper.NavMenuMapper;
import com.aud.mapper.ProjectMapper;
import com.aud.pojo.NavMenu;
@Controller
@RequestMapping("/sites")
public class SitesController extends BaseController {
    @Autowired
    private BannerMapper bannerMapper;
    @Autowired
    private NavMenuMapper navMenuMapper;
    @Autowired
    private ProjectMapper projectMapper;
    @RequestMapping(value = "", method=RequestMethod.GET)
    public String show(ModelMap model){
        model.addAttribute("banners", this.bannerMapper.all());
        return "client/sites/show";
    }
}