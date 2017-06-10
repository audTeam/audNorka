package com.aud.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import com.aud.service.ImageService;
import com.aud.tool.FastDFSClient;

@Service
public class ImageServiceImpl implements ImageService {

	@Override
	public String uploadFile(MultipartFile file) {
		String imageUrl = "";
		try {
			String extName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf(".") + 1);
			FastDFSClient fastDFSClient = new FastDFSClient("classpath:fast_client.conf");
			imageUrl = fastDFSClient.uploadFile(file.getBytes(), extName);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return imageUrl;
	}

	@Override
	public boolean deleteFile(String imageUrl) {
		if(StringUtils.isEmpty(imageUrl)){
			return false;
		}
		FastDFSClient fastDFSClient = null;
		boolean result = false; 
		try {
			fastDFSClient = new FastDFSClient("classpath:fast_client.conf");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String[] ss = imageUrl.split("/");
		String group = ss[0];
		String filePath = ss[1];

		for(int i=2; i<ss.length;i++){
			filePath+=("/"+ss[i]);
		}

		result = fastDFSClient.deleteFile(group, filePath);
		return result;
	}

}
