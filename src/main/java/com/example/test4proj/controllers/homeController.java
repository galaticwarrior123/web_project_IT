package com.example.test4proj.controllers;

import com.example.test4proj.models.article;
import com.example.test4proj.models.user;
import com.example.test4proj.repositories.IArticleRepository;
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
@RequestMapping(path = "")
public class homeController {

    @Autowired
    IUserService userService;

    @Autowired
    IUserRepository userRepository;
    @Autowired
    IArticleRepository articleRepository;
    @GetMapping(value = "")
    public String getAllArticle(ModelMap modelMap){
        modelMap.addAttribute("articles",articleRepository.findAll());
        return "home";
    }
    @GetMapping(value = "{ArticleTypeId}")
    public String getArticlesByType(ModelMap modelMap, @PathVariable int ArticleTypeId){
        Iterable<article> articles = articleRepository.findByarticleTypeId(ArticleTypeId);
        modelMap.addAttribute("articles",articles);
        return "home";
    }



    @GetMapping(value = "/logout")
    public String logOut(HttpSession session){
        session.removeAttribute("USERNAME");
        session.removeAttribute("id");
        return "login";
    }

    @GetMapping(value="/show/{articleID}")
    public String showDetail(){
        return "showDetail";
    }
}
