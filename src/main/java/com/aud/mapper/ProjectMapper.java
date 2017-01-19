package com.aud.mapper;

import java.util.List;

import com.aud.pojo.Project;

public interface ProjectMapper {
	  List<Project> all();

    int deleteByPrimaryKey(Integer id);
    
    int deleteByNavMenuId(int id);

    int insert(Project record);

    int insertSelective(Project record);

    Project selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Project record);

    int updateByPrimaryKeyWithBLOBs(Project record);

    int updateByPrimaryKey(Project record);
    
    List<Project> getByNavMenuId(int nav_menu_id);
    
    int getMaxId();
}