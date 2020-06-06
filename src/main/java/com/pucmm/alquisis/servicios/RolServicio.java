package com.pucmm.alquisis.servicios;

import com.pucmm.alquisis.entidades.Rol;
import com.pucmm.alquisis.repositorios.RolRepositorio;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * RolServices
 */
@Service
public class RolServicio {

    @Autowired
    RolRepositorio rolRepository;

    @Transactional
    public void crearRol(Rol rol) {
        
        rolRepository.save(rol);
    }

    public List<Rol> listaRoles() {
        
        return rolRepository.findAll();
    }

    
}