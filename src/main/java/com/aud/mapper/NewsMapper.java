package com.aud.mapper;

import java.util.List;

<<<<<<< HEAD
import com.aud.pojo.NavMenu;
=======
>>>>>>> 04c2c69578540d168f5425df197c9f6c7ad5e2ae
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
    
    List<News> selectByNewsCategoryId(int categoryId);
}