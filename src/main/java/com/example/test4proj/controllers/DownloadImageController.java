package com.example.test4proj.controllers;

import com.example.test4proj.utils.Constant;
import org.apache.tomcat.util.http.fileupload.FileUtils;
import org.apache.tomcat.util.http.fileupload.IOUtils;
import org.aspectj.util.FileUtil;
import org.springframework.http.HttpRequest;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.StreamUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;

@RestController
@RequestMapping(path = "/image")
public class DownloadImageController {
    @GetMapping(value = "", produces = MediaType.IMAGE_JPEG_VALUE)
    public void DownloadImage(HttpServletResponse resp,
                              HttpServletRequest req) throws IOException {
        String fileName = req.getParameter("fname");
        File file = new File(Constant.DIR +"/"+fileName);
        resp.setContentType(MediaType.IMAGE_JPEG_VALUE);
        FileInputStream input = new FileInputStream(file);
        if(file.exists()) {
            IOUtils.copy(input, resp.getOutputStream());
        }
        input.close();
    }
}