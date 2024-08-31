package com.example.demo.helper;

import java.io.FileOutputStream;
import java.io.InputStream;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class FileUploadHelper {
	public final String UPLOAD_DIR="C:\\Users\\ISSHITA\\Documents\\MySpringWorkspace\\PopPlay\\src\\main\\resources\\static\\vfile";

	public boolean uploadFile(MultipartFile multipartFile)
	{
		boolean f=false;
		try {
			InputStream is=multipartFile.getInputStream();
			byte data[]=new byte[is.available()];
			
			is.read(data);
			FileOutputStream fos=new FileOutputStream(UPLOAD_DIR+"\\"+multipartFile.getOriginalFilename());
			fos.write(data);
			fos.flush();
			fos.close();
			f=true;
		}catch(Exception e) {}
		
		return f;
	}
}
