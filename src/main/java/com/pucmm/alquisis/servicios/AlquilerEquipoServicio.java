package com.pucmm.alquisis.servicios;

import com.pucmm.alquisis.entidades.Equipo;
import com.pucmm.alquisis.entidades.AlquilerEquipo;
import com.pucmm.alquisis.repositorios.AlquilerEquipoRepositorio;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

@Service
public class AlquilerEquipoServicio {

    @Autowired
    AlquilerEquipoRepositorio equipoAlquilerRepository;

    @Transactional
    public void crearEquipoAlquiler(AlquilerEquipo equipoAlquiler) {

        equipoAlquilerRepository.save(equipoAlquiler);

    }

    public List<Equipo> obtenerEquiposAlquiler(Set<AlquilerEquipo> equipoAlquilerSet) {

        List<Equipo> equipoList = new ArrayList<>();

        for (AlquilerEquipo equipoAlquiler : equipoAlquilerSet) {

            equipoList.add(equipoAlquiler.getEquipo());

        }

        return equipoList;
    }

    public AlquilerEquipo buscarEquipoAlquilerById(long id){

        return equipoAlquilerRepository.findById(id);
    }


    public void devolverEquipo(long id){

        AlquilerEquipo equipoAlquiler = equipoAlquilerRepository.findById(id);
        equipoAlquiler.setDevuelto(!equipoAlquiler.getDevuelto());
        equipoAlquilerRepository.save(equipoAlquiler);

    }
}
