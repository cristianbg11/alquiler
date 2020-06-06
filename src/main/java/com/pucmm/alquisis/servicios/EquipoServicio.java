package com.pucmm.alquisis.servicios;

import com.pucmm.alquisis.entidades.Equipo;
import com.pucmm.alquisis.entidades.AlquilerEquipo;
import com.pucmm.alquisis.repositorios.EquipoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service
public class EquipoServicio {

    @Autowired
    EquipoRepository equipoRepository;

    @Autowired
    AlquilerEquipoServicio equipoAlquilerServices;

    @Transactional
    public void crearEquipo(Equipo equipo) {

        equipoRepository.save(equipo);

    }

    @Transactional
    public void eliminarEquipo(Equipo equipo) {

        equipo.setActivo(false);
        equipoRepository.save(equipo);

    }

    public Equipo buscarEquipo(long id) {

        return equipoRepository.findById(id);
    }

    public List<Equipo> buscarEquipos() {

        return equipoRepository.findAll();
    }

    public List<Equipo> buscarEquiposDisponibles() {

        return equipoRepository.findAllByActivoAndCantidadGreaterThan(true, 0);
    }

    public Set<AlquilerEquipo> buscarEquiposAlquiler(List<String> equipos) {


        Set<AlquilerEquipo>  equipoAlquilerSet = new HashSet<>();
        for (String s : equipos) {

            AlquilerEquipo equipoAlquiler = new AlquilerEquipo();
            String[] parte = s.split(":");

            Equipo equipo = buscarEquipo(Integer.parseInt(parte[0]));
            equipo.setCantidad(equipo.getCantidad() - Integer.parseInt(parte[1]));
            crearEquipo(equipo);

            equipoAlquiler.setEquipo(equipo);
            equipoAlquiler.setCantidad(Integer.parseInt(parte[1]));
            equipoAlquiler.setDevuelto(false);

            equipoAlquilerSet.add(equipoAlquiler);

            equipoAlquilerServices.crearEquipoAlquiler(equipoAlquiler);

        }



        return equipoAlquilerSet;
    }

}
