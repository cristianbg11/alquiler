package com.pucmm.alquisis.servicios;

import com.pucmm.alquisis.entidades.Factura;
import com.pucmm.alquisis.repositorios.FacturaRepositorio;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class FacturaServicio {

    @Autowired
    FacturaRepositorio facturaRepository;

    @Transactional
    public void crearFactura(Factura factura){

        facturaRepository.save(factura);
    }

    public List<Factura> listaFacturas(){

        return facturaRepository.findAll();
    }

}
