package com.aud.admin.controller;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.aud.mapper.NavMenuMapper;
import com.aud.mapper.NewsMapper;
import com.aud.pojo.News;
import com.aud.service.ImageService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
@Controller("adminNews")
@RequestMapping("/admin/newsCategories/{newsCategoryId}/news")
public class NewsController {
    @Autowired
    private NavMenuMapper navMenuMapper;
    @Autowired
    private NewsMapper newsMapper;
	@Autowired
	private ImageService imageService;
	
    @RequestMapping(value = "", method = RequestMethod.GET)
    public String index(@PathVariable("newsCategoryId") int id, ModelMap model,	
    		@RequestParam(value="pageNo", required=false, defaultValue="1") Integer pageNo,
			@RequestParam(value="pageSize", required=false, defaultValue="10") Integer pageSize){
		
		PageHelper.startPage(pageNo, pageSize);
	    List<News> list = this.newsMapper.selectByNewsCategoryId(id);
	    PageInfo<News> page = new PageInfo<News>(list);
	    model.addAttribute("pages", page);

        model.addAttribute("newsCategory", this.navMenuMapper.selectByPrimaryKey(id));
        return "admin/news/index";
    }

    @RequestMapping(value = "/{id}/edit", method = RequestMethod.GET)
    public String edit(@PathVariable("id") int id, ModelMap model) {
        model.addAttribute("news", this.newsMapper.selectByPrimaryKey(id));
        return "admin/news/edit";
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public String delete(@PathVariable("newsCategoryId") int newsCategoryId, @PathVariable("id") int id, ModelMap model) {
        News oldNews = this.newsMapper.selectByPrimaryKey(id);
    	this.imageService.deleteFile(oldNews.getHeadImg());
    	this.newsMapper.deleteByPrimaryKey(id);
        return "redirect:/admin/newsCategories/"+newsCategoryId+"/news";
    }

    @RequestMapping(value = "/new", method = RequestMethod.GET)
    public String newPage(@PathVariable("newsCategoryId") int newsCategoryId, ModelMap model) {
        model.addAttribute("newsCategory", this.navMenuMapper.selectByPrimaryKey(newsCategoryId));
        return "admin/news/new";
    }

    @RequestMapping(value = "/{id}/update", method = RequestMethod.POST)
    public String update(@PathVariable("newsCategoryId") int newsCategoryId, @PathVariable("id") Integer id, News news,MultipartFile file){
        News oldNews = this.newsMapper.selectByPrimaryKey(id);
    	if(file!=null&&!file.isEmpty()){
            news.setHeadImg(imageService.uploadFile(file));	
            imageService.deleteFile(oldNews.getHeadImg());
        }
        this.newsMapper.updateByPrimaryKeySelective(news);
        return "redirect:/admin/newsCategories/"+newsCategoryId+"/news";
    }

    @RequestMapping(value = "", method = RequestMethod.POST)
    public String create(@PathVariable("newsCategoryId") int id, News news,MultipartFile file, HttpServletRequest request, Locale locale) {
        news.setNavmenueId(id);
        news.setPublishAt(new Date());
        news.setHeadImg(imageService.uploadFile(file));
        news.setLang(locale.getLanguage());
        this.newsMapper.insertSelective(news);
        return "redirect:/admin/newsCategories/"+id+"/news";
    }
}