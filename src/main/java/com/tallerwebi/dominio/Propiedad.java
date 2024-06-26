package com.tallerwebi.dominio;

import javax.persistence.*;
import com.tallerwebi.dominio.Jugador;

@Entity
public class Propiedad {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String nombre;
    private String imagen;
    private Integer precio;
    private Boolean disponibilidad;
    private Integer nroCasilla;
    private String color;

    @ManyToOne
    private Jugador propietario;

    public Propiedad(Long id, Integer precio, String imagen, String nombre, Boolean disponibilidad,Integer nroCasilla, Jugador propietario) {
        this.id = id;
        this.precio = precio;
        this.nombre = nombre;
        this.imagen = imagen;
        this.disponibilidad = disponibilidad;
        this.nroCasilla = nroCasilla;
        this.propietario = propietario;
    }

    public Propiedad(){}

    public Jugador getPropietario() {
        return propietario;
    }

    public void setPropietario(Jugador propietario) {
        this.propietario = propietario;
    }

    public Boolean getDisponibilidad() {
        return disponibilidad;
    }

    public void setDisponibilidad(Boolean disponibilidad) {
        this.disponibilidad = disponibilidad;
    }

    public Integer getNroCasilla() {
        return nroCasilla;
    }

    public void setNroCasilla(Integer nroCasilla) {
        this.nroCasilla = nroCasilla;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String propiedad) {
        this.nombre = propiedad;
    }

    public Integer getPrecio() {
        return precio;
    }

    public void setPrecio(Integer precio) {
        this.precio = precio;
    }
}
