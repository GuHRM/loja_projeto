package com.unifucamp.gerencia.controllers;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
@Controller
public class FuncionariosController {
    @GetMapping("/funcionarios")
    public String index() {
        return "funcionarios/index";
    }
       
}
