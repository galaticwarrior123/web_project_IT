package com.example.test4proj.utils;

import org.springframework.web.multipart.MultipartFile;

import java.io.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;

public class UploadUtils {
//    public static String processUpload(String filename, HttpServletRequest req, String storeFolder, String storeFilename) throws IOException, ServletException {
//        Part filePart = req.getPart(filename);
//        if(filePart == null || filePart.getSize() == 0)
//            return "";
//        if(storeFolder == null) {
//            storeFolder = Constant.DIR;
//        }
//        if(storeFilename == null) {
//            storeFilename = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
//        }else {
//            storeFilename += "."+ FilenameUtils.getExtension(Paths.get(filePart.getSubmittedFileName()).getFileName().toString());
//        }
//        Path uploadPath = Paths.get(storeFolder);
//        if(!Files.exists(uploadPath)) {
//            Files.createDirectories(uploadPath);
//        }
//        filePart.write(Paths.get(uploadPath.toString(),storeFilename).toString());
//        return storeFilename;
//    }

    public static void saveFile(String uploadDir, String fileName, MultipartFile multipartFile) throws IOException {
        Path uploadPath = Paths.get(uploadDir);
        if(!Files.exists(uploadPath)){
            Files.createDirectories(uploadPath);
        }
        try(InputStream inputStream = multipartFile.getInputStream()){
            Path filePath = uploadPath.resolve(fileName);
            Files.copy(inputStream,filePath, StandardCopyOption.REPLACE_EXISTING);
        }catch (IOException e){
            e.printStackTrace();
            throw  new IOException("Could not save file: "+fileName, e);
        }
    }
    public static void delete(String uploadDir, String fileName) throws IOException {
        Path uploadPath = Paths.get(uploadDir);
        try{
            Path filePath = uploadPath.resolve(fileName);
            Files.delete(filePath);
        }catch (IOException e){
            e.printStackTrace();
            throw  new IOException("Could not save file: "+fileName, e);
        }
    }
}