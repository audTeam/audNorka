package com.aud.client.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.aud.mapper.NewsMapper;
import com.aud.pojo.News;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/client/news")
public class NewsController extends BaseController {

	@Autowired
	private NewsMapper newsMapper;
	
	@Test
	public void test(){
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
		System.out.println(df.format(new Date()));// new Date()为获取当前系统时间
		String SendTime=df.format(new Date());
		System.out.println("----SendTime: "+SendTime);
	}
	
    @RequestMapping(value = "", method = RequestMethod.GET)
    public String show(ModelMap model,	
    		@RequestParam(value="pageNo", required=false, defaultValue="1") Integer pageNo,
			@RequestParam(value="pageSize", required=false, defaultValue="10") Integer pageSize,
			@RequestParam(value="id", required=false) Integer id, Locale locale){
		
		PageHelper.startPage(pageNo, pageSize);
	    List<News> list = this.newsMapper.all(locale.getLanguage());
	    PageInfo<News> page = new PageInfo<News>(list);
	    model.addAttribute("pages", page);

	    News currentNews = new News();
	    if(id==null){
	    	if(list!=null){
	    		currentNews = list.get(0);
	    	}
	    }else{
	    	currentNews = this.newsMapper.selectByPrimaryKey(id);
	    }
	    model.addAttribute("currentNew", currentNews);

		return "client/news/index";
    }
}
