package com.aud.admin.controller;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.ui.ModelMap;

public class UsersTestController {

	@Test
	public void test() {
		ApplicationContext ax = new ClassPathXmlApplicationContext(new String[]{
				"classpath*:*.xml",
				"classpath*:*.properties"
		});
		UsersController userController = ax.getBean(UsersController.class);
		userController.index(new ModelMap());
	}

}
