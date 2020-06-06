package com.pucmm.alquisis.controladores;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Optional;

/**
 * LoginController
 */
@Controller
public class LoginControlador {

    @RequestMapping("/login")
    public String login(Model model, @RequestParam Optional<String> error){
        model.addAttribute("error", error);
        return "login";
    }

    
}