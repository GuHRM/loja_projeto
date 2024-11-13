package com.unifucamp.gerencia.controllers;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class CustomErrorController implements ErrorController {

    @RequestMapping("/error")
    public String handleError(HttpServletRequest request) {
        // Obtenha o código de status da requisição
        Integer statusCode = (Integer) request.getAttribute("javax.servlet.error.status_code");

        if (statusCode != null && statusCode == 404) {
            return "error-404"; // Redireciona para a página de erro 404
        }

        // Página genérica de erro (se desejar criar)
        return "error"; 
    }
}
