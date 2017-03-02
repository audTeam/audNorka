package com.aud.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aud.mapper.UserMapper;
import com.aud.pojo.User;
import com.aud.service.IUserService;

@Service("userService")
public class UserServiceImpl implements IUserService {
    @Autowired
    private UserMapper userMapper;

	@Override
	public List<User> all() {
		return null;
	}

	@Override
	public List<User> getByUserName(String userName) {
		return this.userMapper.getByUserName(userName);
	}

}
