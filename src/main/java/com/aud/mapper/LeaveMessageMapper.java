package com.aud.mapper;

import java.util.List;

import com.aud.pojo.LeaveMessage;

public interface LeaveMessageMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(LeaveMessage record);

    int insertSelective(LeaveMessage record);

    LeaveMessage selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(LeaveMessage record);

    int updateByPrimaryKey(LeaveMessage record);

    List<LeaveMessage> all();

    Long count();
}