package com.aud.mapper;

import java.util.List;

import com.aud.pojo.Project;

public interface ProjectMapper {
	int deleteByPrimaryKey(Integer id);

	int insert(Project record);

	int insertSelective(Project record);

	Project selectByPrimaryKey(Integer id);

	int updateByPrimaryKeySelective(Project record);

	int updateByPrimaryKeyWithBLOBs(Project record);

	int updateByPrimaryKey(Project record);

	//-----------此处以下为新增内容-------------
	int deleteByNavMenuId(int id);

	List<Project> getByNavMenuId(int nav_menu_id, String lang);

	int getMaxId();

	List<Project> all(String lang);
	//-----------此处以下为新增内容-------------
}