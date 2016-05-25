package com.pt.util;

import java.io.File;
import java.io.IOException;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

public class FileUpload {  
	  
    public static final String FILE_PATH = "/upload/";  
  
    //文件上传  
    public static String uploadFile(MultipartFile file, HttpServletRequest request) throws IOException {  
        String fileName = file.getOriginalFilename();
        String path = request.getParameter("pathName");
        if(path == null){
        	path = "";
        }
        
        File tempFile = new File(request.getSession().getServletContext().getRealPath(FILE_PATH + path), new Date().getTime() + "_" + String.valueOf(fileName));  
        if (!tempFile.getParentFile().exists()) {  
            tempFile.getParentFile().mkdir();  
        }  
        if (!tempFile.exists()) {  
            tempFile.createNewFile();  
        }  
        file.transferTo(tempFile);  
        return FILE_PATH + path + tempFile.getName();  
    }  

}  