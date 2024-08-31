package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.helper.FileUploadHelper;

@RestController
public class UploadController {
	@Autowired
	private FileUploadHelper fileUploadHelper;
@PostMapping("/upload-file")
public ResponseEntity<String> uploadFile(@RequestParam("file") MultipartFile file)
{
	try {
		
		
		if(file.isEmpty())
		{
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Request have no data");
		}
		
		//upload code
		boolean f=fileUploadHelper.uploadFile(file);
		if(f)
		{
			return ResponseEntity.ok("File uploaded sucessfully");
		}
		}catch(Exception e) {}
		return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Some thing went wrong! plz try again");
	}
	}

