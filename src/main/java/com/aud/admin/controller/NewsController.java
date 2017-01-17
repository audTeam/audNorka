package com.aud.admin.controller;
import java.sql.Timestamp;
import java.util.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.aud.mapper.NavMenuMapper;
import com.aud.mapper.NewsMapper;
import com.aud.pojo.News;
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
        model.addAttribute("newsCategory", this.navMenuMapper.selectByPrimaryKey(id));
        return "admin/news/index";
    }
    @RequestMapping(value = "/new", method = RequestMethod.GET)
    public String newPage(@PathVariable("newsCategoryId") int newsCategoryId, ModelMap model) {
        model.addAttribute("newsCategory", this.navMenuMapper.selectByPrimaryKey(newsCategoryId));
        return "admin/news/new";
    }
    @RequestMapping(value = "", method = RequestMethod.POST)
    public String create(@PathVariable("newsCategoryId") int id, News news) {
        news.setNavmenueId(id);
        Date date = new Date();  
        Timestamp timeStamp = new Timestamp(date.getTime()); 
        news.setPublishAt(timeStamp);
        this.newsMapper.insertSelective(news);
        return "redirect:/admin/newsCategories/"+id+"/news";
    }
    @RequestMapping(value = "/{newsId}", method = RequestMethod.GET)
    public String show() {
        return "admin/news/show";
    }
}