package com.aud.mapper;

import java.util.List;

import com.aud.pojo.NavMenu;
import com.aud.pojo.News;

public interface NewsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(News record);

    int insertSelective(News record);
    
    List<News> allNewsParentNav(int newsCategoryId);

    News selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(News record);

    int updateByPrimaryKeyWithBLOBs(News record);

    int updateByPrimaryKey(News record);
}