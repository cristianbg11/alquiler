package com.pucmm.alquisis.repositorios;

import com.pucmm.alquisis.entidades.Cliente;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ClienteRepositorio extends JpaRepository<Cliente, Long> {

    Cliente findByNombre(String nombre);
    List<Cliente> findAllByActivo(Boolean aBoolean);
    Cliente findById(long id);
}