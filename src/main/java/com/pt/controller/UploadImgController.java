package com.pt.controller;

import java.io.IOException;
import java.io.OutputStream;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.pt.service.IExpService;
import com.pt.service.IMsgService;
import com.pt.util.FileUpload;

/**
 * 上传图片
 * @author gehb
 *
 */
@Controller
@RequestMapping("/upload")
public class UploadImgController {
	@Resource
	private IExpService expService;
	@Resource
	private IMsgService msgService;
	
	Logger logger = LoggerFactory.getLogger(UploadImgController.class);  
	
    @RequestMapping(value="upload",method=RequestMethod.POST)  
    public ModelAndView upload(@RequestParam("photo") MultipartFile file, HttpServletRequest request, HttpServletResponse response) throws IOException {  
        String filePath = FileUpload.uploadFile(file, request);  
        logger.info("filePath:" + filePath);
        
        ModelAndView mv = new ModelAndView();
        mv.addObject("filePath", filePath);
        return mv;  
    }  
  
    @RequestMapping("download")  
    public void download(String fileName, HttpServletResponse response) throws IOException {  
        OutputStream os = response.getOutputStream();  
        try {  
            response.reset();  
            response.setHeader("Content-Disposition", "attachment; filename=" + fileName);  
            response.setContentType("image/jpeg; charset=utf-8");  
            os.write(FileUtils.readFileToByteArray(FileUpload.getFile(fileName)));  
            os.flush();  
        } finally {  
            if (os != null) {  
                os.close();  
            }  
        }  
    }  
}
