package com.aud.admin.controller;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.aud.mapper.NavMenuMapper;
import com.aud.mapper.NewsMapper;
import com.aud.pojo.News;
import com.aud.tool.Utils;
import com.google.gson.Gson;
@Controller("adminNews")
@RequestMapping("/admin/newsCategories/{newsCategoryId}/news")
public class NewsController {
    @Autowired
    private NavMenuMapper navMenuMapper;
    @Autowired
    private NewsMapper newsMapper;
    @RequestMapping(value = "", method = RequestMethod.GET)
    public String index(@PathVariable("newsCategoryId") int id, ModelMap model) {
        model.addAttribute("news", this.newsMapper.selectByNewsCategoryId(id));
        System.out.println("-------news:"+new Gson().toJson(this.newsMapper.selectByNewsCategoryId(id)));
        System.out.println("-------newsCategory:"+new Gson().toJson(this.navMenuMapper.selectByPrimaryKey(id)));
        model.addAttribute("newsCategory", this.navMenuMapper.selectByPrimaryKey(id));
        return "admin/news/index";
    }
    @RequestMapping(value = "/new", method = RequestMethod.GET)
    public String newPage(@PathVariable("newsCategoryId") int newsCategoryId, ModelMap model) {
        model.addAttribute("newsCategory", this.navMenuMapper.selectByPrimaryKey(newsCategoryId));
        return "admin/news/new";
    }
    @RequestMapping(value = "", method = RequestMethod.POST)
    public String create(@PathVariable("newsCategoryId") int id, News news,MultipartFile file, HttpServletRequest request)throws IllegalStateException, IOException {
        news.setNavmenueId(id);
        Date date = new Date();  
        Timestamp timeStamp = new Timestamp(date.getTime()); 
        //news.setPublishAt(timeStamp);
        news.setHeadImg(Utils.saveFile(file, request));
        this.newsMapper.insertSelective(news);
        return "redirect:/admin/newsCategories/"+id+"/news";
    }
    @RequestMapping(value = "/{newsId}", method = RequestMethod.GET)
    public String show() {
        return "admin/news/show";
    }
}