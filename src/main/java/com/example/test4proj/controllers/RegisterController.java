package com.example.test4proj.controllers;

import com.example.test4proj.models.user;
import com.example.test4proj.repositories.IUserRepository;
import com.example.test4proj.services.IUserService;
import com.example.test4proj.utils.Constant;
import com.example.test4proj.utils.UploadUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.Valid;

@Controller
@RequestMapping(path="/register/")
public class RegisterController {
    @Autowired
    IUserService userService;
    @Autowired
    IUserRepository userRepository;

    @GetMapping(value="")
    public String Register(ModelMap modelMap){
        modelMap.addAttribute("user", new user());
        return "decorators/register";
    }

    @PostMapping(value = "/register2")
    public String register(ModelMap modelMap,
                           @RequestParam("/src/main/webapp/templates/image") MultipartFile multipartFile,
                           @Valid @ModelAttribute("user") user User,
                           BindingResult bindingResult){
        try{
            if(!multipartFile.isEmpty()){
                String fileName = "" + System.currentTimeMillis() +".jpg";
                User.setImage(fileName);
                String upload = Constant.DIR + "\\users\\";
                UploadUtils.saveFile(upload,fileName,multipartFile);
            }
            User.setUserId(userRepository.count() + 1);
            userRepository.save(User);
            return "redirect:/login/";
        }catch (Exception e){
            modelMap.addAttribute("error",e.toString());
            return "redirect:/register/";
        }
    }
}
