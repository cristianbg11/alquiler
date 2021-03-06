package com.pucmm.alquisis.servicios;

import com.pucmm.alquisis.entidades.Cliente;
import com.pucmm.alquisis.repositorios.ClienteRepositorio;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * ClienteServices
 */
@Service
public class ClienteServices {

    @Autowired
    ClienteRepositorio clienteRepository;

    @Transactional
    public void crearCliente(Cliente cliente) {

        clienteRepository.save(cliente);
        
    }

    @Transactional
    public void eliminarCliente(Cliente cliente){

        cliente.setActivo(false);
        clienteRepository.save(cliente);
    }

    public Cliente buscarCliente(long id){

        return clienteRepository.findById(id);
    }

    public List<Cliente> listaClientes() {
        
        return clienteRepository.findAllByActivo(true);
    }

    
}