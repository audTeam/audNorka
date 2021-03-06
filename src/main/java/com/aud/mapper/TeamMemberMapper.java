package com.aud.mapper;

import java.util.List;

import com.aud.pojo.TeamMember;

public interface TeamMemberMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TeamMember record);

    int insertSelective(TeamMember record);

    TeamMember selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TeamMember record);

    int updateByPrimaryKey(TeamMember record);
    
    //新增加的内容
    List<TeamMember> getTeamMemberByLang(String lang);
    
    int getMaxId();
}