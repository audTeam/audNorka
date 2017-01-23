package com.aud.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.aud.mapper.LeaveMessageMapper;
import com.github.pagehelper.PageHelper;
import com.google.gson.Gson;

@Controller
@RequestMapping("/admin/dashborad")
public class DashboradsController {
    @Autowired
	private LeaveMessageMapper leaveMessageMapper;

	@RequestMapping("")
	public String show(ModelMap model,
			@RequestParam(value = "pageNum", required = false, defaultValue = "1") int pageNum,
			@RequestParam(value = "pageSize", required = false, defaultValue = "5") int pageSize){
		model.addAttribute("leaveMessages", this.leaveMessageMapper.all(pageNum, pageSize));
		model.addAttribute("totalSize", Math.ceil(this.leaveMessageMapper.all().size()*1.0/pageSize));
		return "admin/dashborad/show";
	}

	@RequestMapping("/leaveMessages/{id}/delete")
	public String deleteMessage(@PathVariable("id") int id){
		this.leaveMessageMapper.deleteByPrimaryKey(id);
		return "redirect:/admin/dashborad";
	}
}
