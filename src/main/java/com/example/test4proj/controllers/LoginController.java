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

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.Optional;

@Controller
@RequestMapping(path="/login/")
public class LoginController {
    @Autowired
    IUserService userService;
    @Autowired
    IUserRepository userRepository;


    @GetMapping(value=" ")
    public String Login(){
        return "decorators/login";
    }

    @GetMapping(value="/register")
    public String Register(ModelMap modelMap){
        modelMap.addAttribute("user", new user());
        return "register";
    }
    @PostMapping(value = "/checklogin")
    public String checkLogin(ModelMap modelMap,
                             @RequestParam("username") String username,
                             @RequestParam("password") String password,
                             HttpSession session){
        if(userService.checkLogin(username,password)){
            System.out.println("Success");
            Optional<user> userLogin = userService.findByphoneNumber(username);
            user userLogin1 = userLogin.get();
            session.setAttribute("USERNAME", userLogin1.getName());
            session.setAttribute("id", userLogin1.getUserId());
//            return "redirect:article/getArticlesByUser/"+ session.getAttribute("id");
            return "redirect:/user/"+session.getAttribute("id");
        }else{
            System.out.println("Fail");
            modelMap.addAttribute("ERROR", "Khong tim thay username hoac mat khau");
            return "login";
        }
    }



}
