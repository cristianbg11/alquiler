package com.pucmm.alquisis.entidades;


import javax.persistence.*;
import java.io.Serializable;

@Entity
public class AlquilerEquipo implements Serializable {

    @Id
    @GeneratedValue
    private Long id;

    @OneToOne
    private Equipo equipo;

    private int cantidad;

    @Column(columnDefinition = "Boolean default true")
    private Boolean devuelto;


    public AlquilerEquipo() {
    }

    public AlquilerEquipo(Equipo equipo, int cantidad, Boolean devuelto) {
        this.equipo = equipo;
        this.cantidad = cantidad;
        this.devuelto = devuelto;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Equipo getEquipo() {
        return equipo;
    }

    public void setEquipo(Equipo equipo) {
        this.equipo = equipo;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public Boolean getDevuelto() {
        return devuelto;
    }

    public void setDevuelto(Boolean devuelto) {
        this.devuelto = devuelto;
    }
}
