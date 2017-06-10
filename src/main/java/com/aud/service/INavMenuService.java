package com.aud.service;

import com.aud.pojo.NavMenu;

public interface INavMenuService {
    int deleteByPrimaryKey(Integer id);

    int insertSelective(NavMenu record);

    int updateByPrimaryKeySelective(NavMenu record);
    
    int deleteByParentId(int parentId);
}
