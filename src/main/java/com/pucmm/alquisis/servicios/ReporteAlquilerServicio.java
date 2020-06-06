package com.pucmm.alquisis.servicios;

public class ReporteAlquilerServicio {

    private int cliente;

    private int cantidad;

    public ReporteAlquilerServicio() {
    }

    public ReporteAlquilerServicio(int cliente, int cantidad) {
        this.cliente = cliente;
        this.cantidad = cantidad;
    }

    public int getCliente() {
        return cliente;
    }

    public void setCliente(int cliente) {
        this.cliente = cliente;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }
}
