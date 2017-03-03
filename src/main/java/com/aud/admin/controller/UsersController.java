package com.aud.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aud.mapper.UserMapper;
import com.aud.pojo.User;
import com.aud.tool.CryptographyUtil;

@Controller("adminUser")
@RequestMapping("/admin/users")
public class UsersController {
	@Autowired
	private UserMapper userMapper;

	@RequestMapping(value = "", method = RequestMethod.GET)
	public String index(ModelMap model) {
		model.addAttribute("users", this.userMapper.all());
		return "admin/users/index";
	}

	@RequestMapping(value = "/new", method = RequestMethod.GET)
	public String newPage() {
		return "admin/users/new";
	}

	@RequestMapping(value = "", method = RequestMethod.POST)
	public String create(User user, ModelMap model) {
		if(this.userMapper.getByUserName(user.getName()).size()>0){
			model.addAttribute("errorMessage", "不能插入相同的用戶名");
			model.addAttribute("alert", "alert-warning");
			return "/admin/users/new";
		}else{
			user.setPassword(CryptographyUtil.md5(user.getPassword(), "aud"));
			this.userMapper.insertSelective(user);
			return "redirect:/admin/users";	
		}
	}

	@RequestMapping(value = "/{id}/edit", method = RequestMethod.GET)
	public String edit(@PathVariable("id") int id, ModelMap model) {
		model.addAttribute("user", this.userMapper.selectByPrimaryKey(id));
		return "/admin/users/edit";
	}

	@RequestMapping(value = "/{id}/update", method = RequestMethod.PATCH)
	public String update(@PathVariable("id") int id, User user) {
		user.setPassword(CryptographyUtil.md5(user.getPassword(), "aud"));
		this.userMapper.updateByPrimaryKeySelective(user);
		return "redirect:/admin/users";
	}

	@RequestMapping(value = "/{id}/delete", method = RequestMethod.GET)
	public String delete(@PathVariable("id") int id) {
		this.userMapper.deleteByPrimaryKey(id);
		return "redirect:/admin/users";
	}
}
