package com.unifucamp.gerencia.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RestController;

@Controller
public class HomeController {
    @RequestMapping("/")
    public String home() {
        return  "home/index";  
    }
    @RequestMapping("/sobre")
    public String sobre() {
        return  "home/sobre";  
    }
}
