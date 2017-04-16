package com.aud.admin.controller;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import com.aud.mapper.NavMenuMapper;
import com.aud.mapper.ProjectMapper;
import com.aud.mapper.TeamMemberMapper;
import com.aud.mapper.TeamMemberProjectMapper;
import com.aud.pojo.TeamMember;
import com.aud.pojo.TeamMemberProject;
import com.aud.service.ImageService;
import com.aud.tool.Utils;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
@Controller("adminTeamMembers")
@RequestMapping("/admin/teamMembers")
public class TeamMembersController {
    @Autowired
    private NavMenuMapper navMenuMapper;
    @Autowired
    private TeamMemberMapper teamMemberMapper;
    @Autowired
    private ProjectMapper projectMapper;
    @Autowired
    private TeamMemberProjectMapper teamMemberProjectMapper;
    @Autowired
    private ImageService imageService;

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String index(ModelMap model,
    		Locale locale,
			@RequestParam(value="pageNo", required=false, defaultValue="1") Integer pageNo,
			@RequestParam(value="pageSize", required=false, defaultValue="10") Integer pageSize){

		PageHelper.startPage(pageNo, pageSize);
	    List<TeamMember> list = this.teamMemberMapper.getTeamMemberByLang(locale.getLanguage());
	    PageInfo<TeamMember> page = new PageInfo<TeamMember>(list);
	    model.addAttribute("pages", page);

        return "admin/teamMembers/index";
    }
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public String delete(@PathVariable("id") int id) {
        this.teamMemberMapper.deleteByPrimaryKey(id);
        
        return "redirect:/admin/teamMembers";
    }

    @RequestMapping(value = "/{id}/edit", method = RequestMethod.GET)
    public String edit(@PathVariable("id") int id, ModelMap model, Locale locale) {
        model.addAttribute("teamMember", this.teamMemberMapper.selectByPrimaryKey(id));
        model.addAttribute("projects", this.projectMapper.all(locale.getLanguage()));
        model.addAttribute("teamMemberProjects", this.teamMemberProjectMapper.selectByTeamMemberId(id));
        return "admin/teamMembers/edit";
    }

    @RequestMapping(value = "", method = RequestMethod.POST)
    public String create(TeamMember teamMember, MultipartFile file,  HttpServletRequest request, int[] projectIds, Locale local)
            {
    	if(file!=null&&!file.isEmpty()){
            teamMember.setImgUrl(imageService.uploadFile(file));
    	}
        teamMember.setLang(local.getLanguage());
        teamMember.setCreatedAt(new Date());
        this.teamMemberMapper.insertSelective(teamMember);
        int userId = this.teamMemberMapper.getMaxId();
        if(projectIds!=null){
          for(int projectId : projectIds){
            TeamMemberProject relation = new TeamMemberProject();
            relation.setProjectId(projectId);
            relation.setTeamMemberId(userId);
            this.teamMemberProjectMapper.insertSelective(relation);
          }
        }
        return "redirect:/admin/teamMembers";
    }

    @RequestMapping(value = "/{id}/update", method = RequestMethod.POST)
    public String update(@PathVariable("id") int id, TeamMember teamMember, int[] projectIds, MultipartFile file,  HttpServletRequest request) {
    	if(file!=null&&!file.isEmpty()){
            teamMember.setImgUrl(imageService.uploadFile(file));
    	}
    	teamMember.setUpdatedAt(new Date());
        this.teamMemberMapper.updateByPrimaryKeySelective(teamMember);
        if(projectIds!=null){
            for(int projectId : projectIds){
                TeamMemberProject relation = new TeamMemberProject();
                relation.setProjectId(projectId);
                relation.setTeamMemberId(id);
                this.teamMemberProjectMapper.insertSelective(relation);
            }
        }
        return "redirect:/admin/teamMembers";
    }
    @RequestMapping(value = "/new", method = RequestMethod.GET)
    public String newPage(ModelMap model, Locale locale) {
        model.addAttribute("projects", this.projectMapper.all(locale.getLanguage()));
        return "admin/teamMembers/new";
    }
}