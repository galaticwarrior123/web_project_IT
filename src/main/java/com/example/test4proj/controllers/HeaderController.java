package com.example.test4proj.controllers;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.net.http.HttpRequest;
@Controller
@RequestMapping(path="/trangchu/123")
public class HeaderController {
    @GetMapping(value="")
    public void Control(HttpServletRequest request){
        String baseUrl=request.getRequestURL().toString();
        if(baseUrl.contains("trangchu"))
            System.out.println("Success");
        System.out.println(baseUrl);

    }
}
