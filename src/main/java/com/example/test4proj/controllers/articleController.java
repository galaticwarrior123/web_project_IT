package com.example.test4proj.controllers;

import com.example.test4proj.models.area;
import com.example.test4proj.models.article;
import com.example.test4proj.models.articleType;
import com.example.test4proj.models.user;
import com.example.test4proj.repositories.IAreaRepository;
import com.example.test4proj.repositories.IArticleRepository;
import com.example.test4proj.repositories.IArticleTypeRepository;
import com.example.test4proj.repositories.IUserRepository;
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
import javax.validation.constraints.Null;
import java.io.IOException;
import java.util.UUID;

@Controller
@RequestMapping(path = "/user/article")
public class articleController {
    //localhost:8080/article/getArticlesByUser/1
    @Autowired
    IArticleTypeRepository articleTypeRepository;
    @Autowired
    IArticleRepository articleRepository;
    @Autowired
    IAreaRepository areaRepository;
    @Autowired
    IUserRepository userRepository;

    @GetMapping(value = {"/getArticlesByUser/{userId}",})
    public String getArticlesByUser(ModelMap modelMap, @PathVariable Long userId) throws IOException {
        Iterable<article> articles = articleRepository.findByUserId(userId);
        modelMap.addAttribute("articles",articles);
        return "articleList";
    }
    @GetMapping(value = "/changeArticleType/{articleId}")
    public String changeArticleType(ModelMap modelMap, @PathVariable Long articleId) throws IOException {
        Iterable<articleType> articleTypes = articleTypeRepository.findAll();
        modelMap.addAttribute("articleTypes",articleTypes);
        Iterable<area> areas = areaRepository.findAll();
        modelMap.addAttribute("areas",areas);
        modelMap.addAttribute("article", articleRepository.findById(articleId).get());
        return "updateArticle";
    }


    @GetMapping(value = "/InsertArticle")
    public String InsertArticle(ModelMap modelMap, HttpSession session){
        if(session.getAttribute("id")==null){
            return "redirect:/login/";
        }
        modelMap.addAttribute("articleTypes",articleTypeRepository.findAll());
        modelMap.addAttribute("areas",areaRepository.findAll());
        modelMap.addAttribute("users",userRepository.findAll());
        modelMap.addAttribute("article", new article());
        return "insertArticle";
    }
    @PostMapping(value = "/InsertArticle2")
    public String InsertArticle(ModelMap modelMap,
                                @RequestParam("images")MultipartFile multipartFile,
                                @Valid @ModelAttribute("article") article Article,
                                BindingResult bindingResult,
                                HttpSession session){
        if (bindingResult.hasFieldErrors("subject")){
            modelMap.addAttribute("articleTypes",articleTypeRepository.findAll());
            modelMap.addAttribute("areas",areaRepository.findAll());
            modelMap.addAttribute("users",userRepository.findAll());
//            return "redirect:/article/changeArticleType/" + articleId;
            return "insertArticle";
        }
        try{
//            Article.setArticleId(UUID.randomUUID().getMostSignificantBits());
            if(!multipartFile.isEmpty()){
                String fileName = "" + System.currentTimeMillis() +".jpg";
                Article.setImages(fileName);
                String upload = Constant.DIR + "\\articles\\";
                UploadUtils.saveFile(upload,fileName,multipartFile);
            }
            System.out.println("error");
            Article.setUserId((Long)session.getAttribute("id"));
            Article.setArticleId(articleRepository.getMaxId() + 1);
            articleRepository.save(Article);
            return "redirect:/user/article/getArticlesByUser/" + session.getAttribute("id");
        }catch (Exception e){
            modelMap.addAttribute("error",e.toString());
            return "insertArticle";
        }
    }
    @PostMapping(value = "/DeleteArticle/{articleId}")
    public String DeleteArticle(ModelMap modelMap, @PathVariable Long articleId, HttpSession session){
        articleRepository.deleteById(articleId);
        return "redirect:/user/article/getArticlesByUser/" + session.getAttribute("id");
    }
    //    /article/UpdateArticleType/${article.getArticleId()}
    @GetMapping(value="/UpdateArticle/{articleId}")
    public String changeArticle(ModelMap modelMap, @PathVariable Long articleId) throws IOException {
        Iterable<articleType> articleTypes = articleTypeRepository.findAll();
        modelMap.addAttribute("articleTypes",articleTypes);
        Iterable<area> areas = areaRepository.findAll();
        modelMap.addAttribute("areas",areas);
        modelMap.addAttribute("article", articleRepository.findById(articleId).get());
        return "updateArticle";
    }
    @PostMapping(value = "/UpdateArticle/{articleId}")
    public String UpdateArticle(ModelMap modelMap,
                                @RequestParam("images")MultipartFile multipartFile,
                                @Valid @ModelAttribute("article") article Article,
                                BindingResult bindingResult,
                                @PathVariable Long articleId,
                                HttpSession session){
        if (bindingResult.hasFieldErrors("subject")){
            modelMap.addAttribute("articleTypes",articleTypeRepository.findAll());
            modelMap.addAttribute("areas",areaRepository.findAll());
//            return "redirect:/article/changeArticleType/" + articleId;
            return "updateArticle";
        }
        try {
            if (articleRepository.findById(articleId).isPresent()){
                article foundArticle = articleRepository.findById(Article.getArticleId()).get();
                if (!Article.getSubject().trim().isEmpty()){
                    foundArticle.setSubject(Article.getSubject());
                }
                if (!Article.getLocation().trim().isEmpty()){
                    foundArticle.setLocation(Article.getLocation());
                }
                if (!Article.getDescription().trim().isEmpty()){
                    foundArticle.setDescription(Article.getDescription());
                }
                if (Article.getArticleTypeId() != -1){
                    foundArticle.setArticleTypeId(Article.getArticleTypeId());
                }
                if (Article.getAreaId() != -1){
                    foundArticle.setAreaId(Article.getAreaId());
                }
                if (Article.getPrice() != -1){
                    foundArticle.setPrice(Article.getPrice());
                }
                if(!multipartFile.isEmpty()){
//                    String fileName ="" + System.currentTimeMillis() +".jpg";
                    String fileName = foundArticle.getImages();
//                    foundArticle.setImages(fileName);
                    String upload = Constant.DIR + "\\articles\\";
                    UploadUtils.saveFile(upload,fileName,multipartFile);
//                    UploadUtils.delete(upload,fileNameOld);
                }
                articleRepository.save(foundArticle);
            }
        }catch(Exception e) {
            return "updateArticle";
        }
        return "redirect:/user/article/getArticlesByUser/" + session.getAttribute("id");
    }


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

    @GetMapping(value="/check_1")
    public String a (HttpSession session){
        return "redirect:/user/article/getArticlesByUser/"+session.getAttribute("id");
    }
    @GetMapping(value="/update_check1")
    public String b (HttpSession session){
        return "redirect:/user/article/updateUser/"+session.getAttribute("id");
    }
}