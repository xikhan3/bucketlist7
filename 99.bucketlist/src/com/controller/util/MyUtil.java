package com.controller.util;

import java.io.FileOutputStream;

import org.springframework.web.multipart.MultipartFile;

public class MyUtil {
	public static void saveFile(MultipartFile file, String dir) throws Exception{
		if(file != null){
			byte [] data = file.getBytes();
			FileOutputStream out = new FileOutputStream(dir+file.getOriginalFilename());
			out.write(data);
			out.close();
		}
	}
}
