package com.pucmm.alquisis;

import com.pucmm.alquisis.servicios.UsuarioServicio;
import org.springframework.beans.BeansException;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;

@SpringBootApplication
public class AlquisisApplication {

    public static void main(String[] args) {

        ApplicationContext ac = SpringApplication.run(AlquisisApplication.class, args);

        UsuarioServicio usuarioServices;
        try {
            usuarioServices = (UsuarioServicio) ac.getBean("usuarioServicio");
            usuarioServices.crearAdmin();

        } catch (BeansException e) {
            e.printStackTrace();
        }
    }

}
