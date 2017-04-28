package com.aud.mapper;

import java.util.List;

import com.aud.pojo.ContactUsPage;

public interface ContactUsPageMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ContactUsPage record);

    int insertSelective(ContactUsPage record);

    ContactUsPage selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ContactUsPage record);

    int updateByPrimaryKey(ContactUsPage record);

	List<ContactUsPage> all(String language);
}