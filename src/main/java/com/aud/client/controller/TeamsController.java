package com.aud.client.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.aud.mapper.NavMenuMapper;
import com.aud.mapper.TeamMemberMapper;
@Controller("clientTeams")
@RequestMapping("/client/teams")
public class TeamsController extends BaseController{
    @Autowired
    private TeamMemberMapper teamMemberMapper;
    @RequestMapping(value="", method=RequestMethod.GET)
    public String index(ModelMap model){
        model.addAttribute("teamMembers", this.teamMemberMapper.all());
        return "client/teams/index";
    }
}