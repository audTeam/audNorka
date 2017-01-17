package com.aud.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aud.mapper.HistoryIntroduceMapper;
import com.aud.pojo.HistoryIntroduce;

@Controller("adminAboutUs")
@RequestMapping("/admin/aboutUs")
public class AboutUsController {
  @Autowired
  private HistoryIntroduceMapper historyIntroduceMapper;
  @RequestMapping(value="/historyIntroduce", method=RequestMethod.GET)
  public String edit(ModelMap model){
	  List<HistoryIntroduce> all = this.historyIntroduceMapper.all();
	  if(all.size()>0){
		  model.addAttribute("model", all);
	  }else{
		  model.addAttribute("model", null);
	  }
	  return "admin/historyIntroduce/edit";
  }

  @RequestMapping(value="/historyIntroduce/edit", method=RequestMethod.GET)
  public String creat(HistoryIntroduce historyIntroduce){
	 
	  return "redirect:/admin/historyIntroduce";
  }
}
