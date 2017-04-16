package com.aud.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.aud.service.ImageService;
import com.aud.tool.Constant;
import com.baidu.ueditor.ActionEnter;
import com.baidu.umeditor.upload.Uploader;

@Controller
@RequestMapping("/ueditor/uploads")
public class UEditorController {
	@Autowired
	private ImageService imageService;

	@RequestMapping(value = "/image", method = RequestMethod.POST)
	@ResponseBody
	public Object uploadFile(HttpServletRequest request, HttpServletResponse response) throws Exception, IOException {
		// 转型为MultipartHttpServletRequest
		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
		// 获取文件到map容器中
		Map<String, MultipartFile> fileMap = multipartRequest.getFileMap();
		String result = "";

		for (Map.Entry<String, MultipartFile> entity : fileMap.entrySet()) {
			MultipartFile f = entity.getValue();
			if (f != null && !f.isEmpty()) {
				String fileName = f.getName();
				String originalName = f.getOriginalFilename();
				Long size = f.getSize();
				String type = f.getContentType();
				String imgUrl = imageService.uploadFile(f);

				result = "{\"name\":\"" + fileName + "\", \"originalName\": \"" + originalName + "\", \"size\": " + size
						+ ", \"state\": \"" + "SUCCESS" + "\", \"type\": \"" + type + "\", \"url\": \""
						+ imgUrl + "\"}";
				break;
			}
		}

		System.out.println("-------result: " + result);
		return result;
	}

	@RequestMapping(value = "/config")
	public void config(HttpServletRequest request, HttpServletResponse response) {
		try {
			// 这里就是把controller.jsp代码copy下来
			request.setCharacterEncoding("utf-8");
			response.setHeader("Content-Type", "text/html");
			String roolPath = request.getSession().getServletContext().getRealPath("/");
			// 记得把config.json放到/Test/WEB-INF/下
			String configStr = new ActionEnter(request, roolPath).exec();
			System.out.println("roolPath: " + roolPath);
			response.getWriter().write(configStr);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@RequestMapping(value = "/new", method = RequestMethod.GET)
	public String newPage() {
		return "admin/ued/new";
	}
}