package com.aud.client.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aud.mapper.HistoryIntroduceMapper;
import com.aud.mapper.LeaveMessageMapper;
import com.aud.pojo.HistoryIntroduce;
import com.aud.pojo.LeaveMessage;

@Controller
@RequestMapping("/client/aboutUs")
public class AboutUsController {
	@Autowired
	private LeaveMessageMapper leaveMessageMapper;
	@Autowired
	private HistoryIntroduceMapper historyIntroduceMapper;

	@RequestMapping(value="/leaveMessages", method=RequestMethod.POST)
	public String leaveMessages(LeaveMessage leaveMessage){
		leaveMessage.setCreatedAt(new Date());
		this.leaveMessageMapper.insertSelective(leaveMessage);
		return "redirect:/client/aboutUs/contactUs?message=success";
	}

	@RequestMapping(value="", method=RequestMethod.GET)
	public String show(ModelMap model){
		List<HistoryIntroduce> all = this.historyIntroduceMapper.all();
		if (all.size() > 0) {
			model.addAttribute("historyIntroduce", all.get(0));
		} else {
			HistoryIntroduce historyIntroduce = new HistoryIntroduce();
			historyIntroduce.setCompanyHistory("");
			historyIntroduce.setCooperationCompany("");
			historyIntroduce.setVideo("");
			historyIntroduce.setHeadImg("");

			historyIntroduceMapper.insertSelective(historyIntroduce);
			model.addAttribute("historyIntroduce", new HistoryIntroduce());
		}
		return "client/aboutUs/show";
	}

	@RequestMapping(value="/service", method=RequestMethod.GET)
	public String showService(){
		return "client/aboutUs/service";
	}

	@RequestMapping(value="/contactUs", method=RequestMethod.GET)
	public String showContactUs(){
		return "client/aboutUs/contact-us";
	}
}
