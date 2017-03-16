package com.aud.mapper;

import java.util.List;

import com.aud.pojo.NavMenu;

public interface NavMenuMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(NavMenu record);

    int insertSelective(NavMenu record);

    int updateByPrimaryKeySelective(NavMenu record);

    int updateByPrimaryKey(NavMenu record);

    NavMenu selectByPrimaryKey(Integer id);

    List<NavMenu> all();

    List<NavMenu> allNavMenuByParentNav(int parentNav, String lang);
}