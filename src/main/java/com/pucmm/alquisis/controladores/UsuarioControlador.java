package com.pucmm.alquisis.controladores;

import com.pucmm.alquisis.entidades.Usuario;
import com.pucmm.alquisis.servicios.RolServicio;
import com.pucmm.alquisis.servicios.UsuarioServicio;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Locale;

/**
 * UsuariosController
 */
@Controller()
public class UsuarioControlador {

    @Autowired
    UsuarioServicio usuariosServices;

    @Autowired
    RolServicio rolServices;

    @Autowired
    MessageSource messageSource;

    private BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();


    @RequestMapping("/index/usuarios")
    public String usuarios(Model model, Locale locale) {

        model.addAttribute("titulo_inicio", messageSource.getMessage("titulo_inicio", null, locale));
        model.addAttribute("titulo_clientes", messageSource.getMessage("titulo_clientes", null, locale));
        model.addAttribute("titulo_usuarios", messageSource.getMessage("titulo_usuarios", null, locale));
        model.addAttribute("titulo_equipos", messageSource.getMessage("titulo_equipos", null, locale));
        model.addAttribute("titulo_alquileres", messageSource.getMessage("titulo_alquileres", null, locale));
        model.addAttribute("titulo_reportes", messageSource.getMessage("titulo_reportes", null, locale));


        model.addAttribute("boton_crear", messageSource.getMessage("boton_crear", null, locale));
        model.addAttribute("boton_editar", messageSource.getMessage("boton_editar", null, locale));
        model.addAttribute("boton_eliminar", messageSource.getMessage("boton_eliminar", null, locale));
        model.addAttribute("boton_cerrar", messageSource.getMessage("boton_cerrar", null, locale));


        model.addAttribute("mostrando", messageSource.getMessage("mostrando", null, locale));
        model.addAttribute("a", messageSource.getMessage("a", null, locale));
        model.addAttribute("de", messageSource.getMessage("de", null, locale));
        model.addAttribute("registros", messageSource.getMessage("registros", null, locale));

        model.addAttribute("nuevo_usuario", messageSource.getMessage("nuevo_usuario", null, locale));
        model.addAttribute("contra", messageSource.getMessage("contra", null, locale));
        model.addAttribute("permisos", messageSource.getMessage("permisos", null, locale));


        model.addAttribute("tabla_nombre", messageSource.getMessage("tabla_nombre", null, locale));
        model.addAttribute("tabla_acciones", messageSource.getMessage("tabla_acciones", null, locale));
        model.addAttribute("tabla_usuario", messageSource.getMessage("tabla_usuario", null, locale));

        model.addAttribute("opciones", messageSource.getMessage("opciones", null, locale));
        model.addAttribute("usuario_active", "active");
        return "usuarios";
    }

    @ResponseBody
    @RequestMapping(value = "/usuarios", produces = { "application/json" })
    public List<Usuario> usuarios() {
        return usuariosServices.obtenerUsuarios();
    }

    @Secured("ROLE_ADMIN")
    @RequestMapping(value = "/usuario/crear", method = RequestMethod.POST, consumes = "application/json")
    public ResponseEntity<List<Usuario>> crearUsuario(@RequestBody List<Usuario> usuarioList) {

        for (Usuario usuario : usuarioList) {
            
            usuario.setPassword(bCryptPasswordEncoder.encode(usuario.getPassword()));
            usuariosServices.guardarUsuario(usuario);
        }

        return new ResponseEntity<>(usuarioList, HttpStatus.OK);
    }

    @ResponseBody
    @RequestMapping(value = "/usuario/eliminar/{id}", method = RequestMethod.POST)
    public ResponseEntity<Long> eliminarUsuario(@PathVariable(value ="id") long id) {

        System.out.println("id:  " + id);
        usuariosServices.eliminarUsuario(id);

        return new ResponseEntity<>(id, HttpStatus.OK);
   
    }



}