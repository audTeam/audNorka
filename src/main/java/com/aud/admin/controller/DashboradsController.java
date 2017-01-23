package com.aud.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.aud.mapper.LeaveMessageMapper;

@Controller
@RequestMapping("/admin/dashborad")
public class DashboradsController {
    @Autowired
	private LeaveMessageMapper leaveMessageMapper;

	@RequestMapping("")
	public String show(ModelMap model){
		model.addAttribute("leaveMessages", this.leaveMessageMapper.all());
		return "admin/dashborad/show";
	}

	@RequestMapping("/leaveMessages/{id}/delete")
	public String deleteMessage(@PathVariable("id") int id){
		this.leaveMessageMapper.deleteByPrimaryKey(id);
		return "redirect:/admin/dashborad";
	}
}
