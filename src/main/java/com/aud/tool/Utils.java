package com.aud.tool;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

public class Utils {
	public static String saveFile(MultipartFile file, HttpServletRequest request, String baseUrl) throws IllegalStateException, IOException{
		if (file.isEmpty()) {
			System.out.println("文件未上传!");
			return "";
		} else {
			String time = String.valueOf(System.currentTimeMillis());
			String path = request.getSession().getServletContext().getRealPath(baseUrl);
			String fileName = file.getOriginalFilename();
			String imagePath = path + "\\" + time + "\\" + fileName;
			File folder = new File(path + "\\" + time);
			// 如果文件夹不存在则创建
			if (!folder.exists() && !folder.isDirectory()) {
				folder.mkdir();
			}
			File localFile = new File(imagePath);
			file.transferTo(localFile);
			return baseUrl+"/"+time+"/"+fileName;
		}
	}
}
