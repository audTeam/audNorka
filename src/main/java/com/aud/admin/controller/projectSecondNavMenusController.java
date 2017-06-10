package com.aud.admin.controller;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.aud.mapper.NavMenuMapper;
import com.aud.mapper.ProjectMapper;
import com.aud.pojo.NavMenu;
import com.aud.pojo.Project;
import com.aud.service.INavMenuService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/admin/projectCases/{projectCaseId}/projectSecondNavMenus")
public class projectSecondNavMenusController {
	@Autowired
	private NavMenuMapper navMenuMapper;
	@Autowired
	private INavMenuService navMenuService;
	@Autowired
	private ProjectMapper projectMapper;

    @ModelAttribute
    public void setCurrentModule(ModelMap model) {  
       model.addAttribute("currentModule", "22");  
    }

	@RequestMapping(value = "", method=RequestMethod.GET)
	public String index(ModelMap model,
			@RequestParam(value="pageNo", required=false, defaultValue="1") Integer pageNo,
			@RequestParam(value="pageSize", required=false, defaultValue="10") Integer pageSize,
			Locale locale,
			@PathVariable("projectCaseId") Integer projectCaseId){

		PageHelper.startPage(pageNo, pageSize);
	    List<NavMenu> list = this.navMenuMapper.allNavMenuByParentNav(projectCaseId, locale.getLanguage());
	    PageInfo<NavMenu> page = new PageInfo<NavMenu>(list);
	    model.addAttribute("pages", page);
	    model.put("firstNavMenu", navMenuMapper.selectByPrimaryKey(projectCaseId));

		return "admin/projectSecondNavMenus/index";
	}

	@RequestMapping(value = "/{id}", method=RequestMethod.GET)
	public String show(@PathVariable("id") Integer sencondNavMenu, ModelMap model,
			@RequestParam(value="pageNo", required=false, defaultValue="1") Integer pageNo,
			@RequestParam(value="pageSize", required=false, defaultValue="10") Integer pageSize,
			Locale locale,
			@PathVariable("projectCaseId") Integer firstNavMenu){
		PageHelper.startPage(pageNo, pageSize);
	    List<Project> list = this.projectMapper.getByNavMenuId(sencondNavMenu, locale.getLanguage());
	    PageInfo<Project> page = new PageInfo<Project>(list);

		model.addAttribute("firstNavMenu", this.navMenuMapper.selectByPrimaryKey(firstNavMenu));
		model.addAttribute("secondNavMenu", this.navMenuMapper.selectByPrimaryKey(sencondNavMenu));
		model.addAttribute("pages", page);

		return "admin/projectSecondNavMenus/show";
	}

	@RequestMapping(value = "/{id}/edit", method=RequestMethod.GET)
	public String edit(@PathVariable("id") int id, @PathVariable("projectCaseId") Integer projectCaseId, ModelMap model){
		model.addAttribute("firstNavMenu", this.navMenuMapper.selectByPrimaryKey(projectCaseId));
		model.addAttribute("navMenu", this.navMenuMapper.selectByPrimaryKey(id));
		return "admin/projectSecondNavMenus/edit";
	}

	@RequestMapping(value = "/new", method=RequestMethod.GET)
	public String newPage(@PathVariable("projectCaseId") Integer projectCaseId, ModelMap model){
		model.addAttribute("firstNavMenu", this.navMenuMapper.selectByPrimaryKey(projectCaseId));
		return "admin/projectSecondNavMenus/new";
	}

	@RequestMapping(value = "/{id}/delete", method=RequestMethod.POST)
	public String delete(@PathVariable("id") int id, @PathVariable("projectCaseId") Integer projectCaseId){
		this.navMenuService.deleteByPrimaryKey(id);
		this.projectMapper.deleteByNavMenuId(id);
		return "redirect:/admin/projectCases/"+projectCaseId+"/projectSecondNavMenus";
	}

	@RequestMapping(value = "/{id}/update", method=RequestMethod.POST)
	public String update(NavMenu navMenu, Locale locale, @PathVariable("projectCaseId") Integer projectCaseId){
		this.navMenuService.updateByPrimaryKeySelective(navMenu);
		return "redirect:/admin/projectCases/"+projectCaseId+"/projectSecondNavMenus";
	}

	@RequestMapping(value = "", method=RequestMethod.POST)
	public String create(NavMenu navMenu, Locale locale,@PathVariable("projectCaseId") Integer projectCaseId){
		navMenu.setLang(locale.getLanguage());
		this.navMenuService.insertSelective(navMenu);
		return "redirect:/admin/projectCases/"+projectCaseId+"/projectSecondNavMenus";
	}
}
