package com.aud.mapper;

import com.aud.pojo.Demo;

public interface DemoMapper {
    int insert(Demo record);

    int insertSelective(Demo record);
}