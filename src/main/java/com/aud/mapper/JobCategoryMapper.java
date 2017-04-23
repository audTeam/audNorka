package com.aud.mapper;

import java.util.List;

import com.aud.pojo.JobCategory;

public interface JobCategoryMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(JobCategory record);

    int insertSelective(JobCategory record);

    JobCategory selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(JobCategory record);

    int updateByPrimaryKeyWithBLOBs(JobCategory record);

    int updateByPrimaryKey(JobCategory record);
    
    List<JobCategory> all(String lang);
}