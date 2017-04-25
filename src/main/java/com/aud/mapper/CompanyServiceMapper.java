package com.aud.mapper;

import java.util.List;

import com.aud.pojo.CompanyService;

public interface CompanyServiceMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CompanyService record);

    int insertSelective(CompanyService record);

    CompanyService selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CompanyService record);

    int updateByPrimaryKey(CompanyService record);

	List<CompanyService> all(String language);
}