package com.aud.service;

import java.util.List;
import java.util.Set;

import com.aud.pojo.User;

public interface IUserService {
	List<User> all();
	int save(User user);
	List<User> getByUserName(String userName);
	Set<String> getRoles(String userName);
}
