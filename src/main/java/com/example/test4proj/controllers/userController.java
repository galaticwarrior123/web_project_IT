package com.example.test4proj.controllers;

import com.example.test4proj.models.article;
import com.example.test4proj.models.user;
import com.example.test4proj.repositories.IArticleRepository;
import com.example.test4proj.repositories.IUserRepository;
import com.example.test4proj.utils.Constant;
import com.example.test4proj.utils.UploadUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.io.IOException;

@Controller
@RequestMapping(path = "/user")
public class userController {
    @Autowired
    private IUserRepository userRepository;
    @Autowired
    IArticleRepository articleRepository;
    @GetMapping(value="/{userId}")
    public String getAllArticle(ModelMap modelMap){
        modelMap.addAttribute("articles",articleRepository.findAll());
        return "home";
    }

    @GetMapping(value="/check")
    public String check (HttpServletRequest request, HttpSession session){
        String baseUrl=request.getRequestURL().toString();
        if(baseUrl.contains("user"))
            System.out.println("Success");
        return "redirect:/user/"+session.getAttribute("id");

    }

    @GetMapping(value = "/articleId/{ArticleTypeId}")
    public String getArticlesByType(ModelMap modelMap, @PathVariable int ArticleTypeId){
        Iterable<article> articles = articleRepository.findByarticleTypeId(ArticleTypeId);
        modelMap.addAttribute("articles",articles);
        return "home";
    }



//    @GetMapping(value = "")
//    public String getAllUsers(ModelMap modelMap, HttpSession session){
//        if(session.getAttribute("USERNAME")!= null){
//            Iterable<user> users = userRepository.findAll();
//            modelMap.addAttribute("users",users);
//            return "user";
//        }
//        return "login";
//    }
    @GetMapping(value = "/updateUser/{userId}")
    public String updateUser(ModelMap modelMap, @PathVariable Long userId){
//        modelMap.addAttribute("user", new user());
        modelMap.addAttribute("user", userRepository.findById(userId).get());
        return "updateUser";
    }
    @PostMapping(value = "/UpdateUser/{userId}")
    public String UpdateUser(ModelMap modelMap,
                             @RequestParam("image") MultipartFile multipartFile,
                             @Valid @ModelAttribute("user") user User,
                             BindingResult bindingResult,
                             @PathVariable Long userId,
                             HttpSession session){
        try {
            if (userRepository.findById(userId).isPresent()){
                user foundUser = userRepository.findById(User.getUserId()).get();
                if (!User.getName().trim().isEmpty()){
                    foundUser.setName(User.getName());
                }
                if (!User.getPassWord().trim().isEmpty()){
                    foundUser.setPassWord(User.getPassWord());
                }
                if(!multipartFile.isEmpty()){
                    String fileName = foundUser.getImage();
                    String upload = Constant.DIR + "\\users\\";
                    UploadUtils.saveFile(upload,fileName,multipartFile);
                }
                userRepository.save(foundUser);
            }
        }catch(Exception e) {
            return "updateUser";
        }
        return "redirect:/article/getArticlesByUser/" + session.getAttribute("id");
    }

    @GetMapping(value="/show/{articleID}")
    public String showDetail(){
        return "showDetail";
    }

    @GetMapping(value = "/logout")
    public String logOut(HttpSession session){
        session.removeAttribute("USERNAME");
        session.removeAttribute("id");
        return "login";
    }
}