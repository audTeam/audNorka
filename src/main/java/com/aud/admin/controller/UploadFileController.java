package com.aud.admin.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.aud.tool.Utils;

@Controller
@RequestMapping("/admin/uploads")
public class UploadFileController {
	@RequestMapping(value = "/image", method = RequestMethod.POST)
	@ResponseBody
	public Object uploadFile(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 转型为MultipartHttpServletRequest
		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
		// 获取文件到map容器中
		Map<String, MultipartFile> fileMap = multipartRequest.getFileMap();

		List<Map<String, String>> collection = new ArrayList<Map<String, String>>();

		for (Map.Entry<String, MultipartFile> entity : fileMap.entrySet()) {
			MultipartFile f = entity.getValue();
			if (f != null && !f.isEmpty()) {
				Map<String, String> item = new HashMap<>();
				item.put("imgUrl", Utils.saveFile(f, request));
				collection.add(item);
			}
		}
		return collection;
	}
}
