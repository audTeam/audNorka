package com.aud.client.controller;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.aud.mapper.BannerMapper;
import com.aud.mapper.NavMenuMapper;
import com.aud.mapper.ProjectMapper;
import com.aud.pojo.NavMenu;
import com.aud.pojo.Project;
@Controller
@RequestMapping("/client/projects")
public class ProjectsController extends BaseController {
    @Autowired
    private BannerMapper bannerMapper;
    @Autowired
    private NavMenuMapper navMenuMapper;
    @Autowired
    private ProjectMapper projectMapper;
    @RequestMapping(value="", method=RequestMethod.GET)
    public String index(ModelMap model){
        model.addAttribute("projects", this.projectMapper.all());
        return "client/projects/index";
    }
    @RequestMapping(value="/navMenus/{navMenuId}/projects/{projectId}", method=RequestMethod.GET)
    public String showCaseDetail(@PathVariable("navMenuId") String navMenuId){
        return "client/projects/caseDetail";
    }
    
    @RequestMapping(value="/{id}", method=RequestMethod.GET)
    public String show(@PathVariable("id") int id, ModelMap model){
        Project project = this.projectMapper.selectByPrimaryKey(id);
        model.addAttribute("project", project);
        model.addAttribute("projects", this.projectMapper.getByNavMenuId(project.getNavMenuId()));
        return "client/projects/show";
    }
}