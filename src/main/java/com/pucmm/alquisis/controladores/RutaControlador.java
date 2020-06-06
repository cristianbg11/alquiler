package com.pucmm.alquisis.controladores;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.Locale;

@Controller()
@RequestMapping("/index/")
public class RutaControlador {

    @Autowired
    MessageSource messageSource;
  
    @RequestMapping("/")
    public String index(Model model, Locale locale, HttpServletRequest request) {

        model.addAttribute("titulo_inicio", messageSource.getMessage("titulo_inicio", null, locale));
        model.addAttribute("titulo_clientes", messageSource.getMessage("titulo_clientes", null, locale));
        model.addAttribute("titulo_usuarios", messageSource.getMessage("titulo_usuarios", null, locale));
        model.addAttribute("titulo_equipos", messageSource.getMessage("titulo_equipos", null, locale));
        model.addAttribute("titulo_alquileres", messageSource.getMessage("titulo_alquileres", null, locale));
        model.addAttribute("titulo_reportes", messageSource.getMessage("titulo_reportes", null, locale));
        model.addAttribute("puerto", request.getLocalPort());
        model.addAttribute("opciones", messageSource.getMessage("opciones", null, locale));

        model.addAttribute("inicio_active", "active");
        return "index";
    }
}