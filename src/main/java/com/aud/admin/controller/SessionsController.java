package com.aud.admin.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aud.mapper.UserMapper;
import com.aud.pojo.User;

@Controller
@RequestMapping("/admin/sessions")
public class SessionsController {
	@Autowired
	private UserMapper userMapper;

	@RequestMapping(value = "", method = RequestMethod.POST)
	public String login(User user, HttpServletRequest request, String backUrl) {
		Subject subject = SecurityUtils.getSubject();
		UsernamePasswordToken token = new UsernamePasswordToken(user.getName(), user.getPassword());
		try {
			subject.login(token);
			Session session = subject.getSession();
			user = this.userMapper.getByUserName(user.getName()).get(0);
			session.setAttribute("userId", user.getId());
			session.setAttribute("name", user.getName());
			session.setAttribute("isRoot", user.getRoot());
			backUrl = (backUrl == null || ("".equals(backUrl))) ? "/admin/dashborad" : "/" + backUrl;
			return "redirect:" + backUrl;
		} catch (Exception e) {
			request.setAttribute("user", user);
			request.setAttribute("errorMsg", "登录失败");
			return "redirect:/admin/sessions/new";
		}
	}

	@RequestMapping(value = { "/new", "", "/" }, method = RequestMethod.GET)
	public String newPage() {
		return "admin/sessions/new";
	}

	@RequestMapping(value = "/{id}/logOut", method = RequestMethod.GET)
	public String logOut(@PathVariable("id") int id) {
		Subject subject = SecurityUtils.getSubject();
		subject.logout();
		return "redirect:/admin/sessions/new";
	}

/*	@RequestMapping(value = "", method = RequestMethod.POST)
	public String create(User user, HttpSession session, String backUrl, RedirectAttributes redirectAttributes) {
		List<User> users = userMapper.selectByUser(user);
		if (users.size() > 0) {
			Iterator<User> iter = users.iterator();
			while (iter.hasNext()) {
				User newUser = iter.next();
				session.setAttribute("userId", newUser.getId());
				session.setAttribute("name", newUser.getName());
				session.setAttribute("isRoot", newUser.getRoot());
			}
			backUrl = (backUrl == null || ("".equals(backUrl))) ? "/admin/dashborad" : "/" + backUrl;
			return "redirect:" + backUrl;
		} else {
			redirectAttributes.addFlashAttribute("errorMessage", "账号密码错误");
			return "redirect:/admin/sessions/new";
		}
	}*/
}
