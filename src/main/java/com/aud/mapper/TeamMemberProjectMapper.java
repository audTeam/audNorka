package com.aud.mapper;

import com.aud.pojo.TeamMemberProject;

public interface TeamMemberProjectMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TeamMemberProject record);

    int insertSelective(TeamMemberProject record);

    TeamMemberProject selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TeamMemberProject record);

    int updateByPrimaryKey(TeamMemberProject record);
}