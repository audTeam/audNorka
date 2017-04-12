package com.aud.service;

import org.springframework.web.multipart.MultipartFile;

public interface ImageService {
	String uploadFile(MultipartFile file);
	boolean deleteFile(String imageUrl);
}
