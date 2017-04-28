package com.aud.admin.controller;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aud.mapper.ContactUsPageMapper;
import com.aud.pojo.ContactUsPage;

@Controller("ContactUsPageMapper")
@RequestMapping("/admin/contactUsPage")
public class ContactUsPageController {
	@Autowired
	private ContactUsPageMapper contactUsPageMapper;

	@RequestMapping(value="/edit", method = RequestMethod.GET)
	public String edit(ModelMap model, Locale locale) {
		List<ContactUsPage> contactUsPages = this.contactUsPageMapper.all(locale.getLanguage());
		if(contactUsPages!=null&&contactUsPages.size()>0){
			model.addAttribute("contactUsPage", contactUsPages.get(0));
		}else{
			model.addAttribute("contactUsPage", new ContactUsPage());
		}
		return "admin/contactUsPage/edit";
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(Locale locale, ModelMap model, ContactUsPage contactUsPage){
		contactUsPage.setLang(locale.getLanguage());
		if(contactUsPage.getId()!=null&&contactUsPage.getId()>0){
			contactUsPageMapper.updateByPrimaryKeySelective(contactUsPage);
		}else{
			contactUsPageMapper.insertSelective(contactUsPage);
		}
		return "redirect:/admin/contactUsPage/edit";
	}
}
