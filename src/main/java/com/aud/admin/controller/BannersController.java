package com.aud.admin.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.aud.mapper.BannerMapper;
import com.aud.pojo.Banner;

@Controller
@RequestMapping("/admin/banners")
public class BannersController {
	@Autowired
	private BannerMapper bannerMapper;
	
	@RequestMapping(value = "/new", method = RequestMethod.GET)
	public String newPage(ModelMap model) {
		model.addAttribute("banner", new Banner());
		return "admin/banners/new";
	}
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String index(ModelMap model) {
		model.addAttribute("banners", this.bannerMapper.all());
		return "admin/banners/index";
	}
	
	@RequestMapping(value = "", method = RequestMethod.POST)
	public String create(Banner banner, @RequestParam MultipartFile[] myfiles, HttpServletRequest request) throws IllegalStateException, IOException {
		for (MultipartFile file : myfiles) {
			// 此处MultipartFile[]表明是多文件,如果是单文件MultipartFile就行了
			if (file.isEmpty()) {
				System.out.println("文件未上传!");
			} else {
				// 得到上传的文件名
				String fileName = file.getOriginalFilename();
				// 得到服务器项目发布运行所在地址
				String path1 = request.getSession().getServletContext().getRealPath("image") + File.separator;
				// 此处未使用UUID来生成唯一标识,用日期做为标识
				String path = path1 + new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()) + fileName;
				// 查看文件上传路径,方便查找
				System.out.println(path);
				// 把文件上传至path的路径
				File localFile = new File(path);
				file.transferTo(localFile);
			}
		}
		this.bannerMapper.insertSelective(banner);
		return "redirect:/admin/banners";
	}
	
	@RequestMapping(value = "/{id}/edit", method = RequestMethod.GET)
	public String edit(@PathVariable("id") int id, ModelMap model) {
		model.addAttribute("banner", this.bannerMapper.selectByPrimaryKey(id));
		return "admin/banners/edit";
	}
	
	@RequestMapping(value = "/{id}", method = RequestMethod.PATCH)
	public String update(Banner banner, ModelMap model) {
		this.bannerMapper.updateByPrimaryKeySelective(banner);
		return "redirect:/admin/banners";
	}
	
	@RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
	public String delete(@PathVariable("id") int id) {
		this.bannerMapper.deleteByPrimaryKey(id);
		return "redirect:/admin/banners";
	}
}
