package com.pucmm.alquisis.repositorios;


import com.pucmm.alquisis.entidades.Equipo;
import com.pucmm.alquisis.entidades.AlquilerEquipo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AlquilerEquipoRepositorio extends JpaRepository<AlquilerEquipo, Long> {

    AlquilerEquipo findById(long id);
    AlquilerEquipo findByEquipo(Equipo equipo);

}
