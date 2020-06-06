package com.pucmm.alquisis.repositorios;

import com.pucmm.alquisis.entidades.Factura;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface FacturaRepositorio extends JpaRepository<Factura, Long> {

    Factura findById(long id);

}
