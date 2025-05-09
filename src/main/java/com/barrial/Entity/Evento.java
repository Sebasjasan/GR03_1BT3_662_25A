package com.barrial.Entity;

import jakarta.persistence.*;

@Entity
@Table(name = "Evento")
public class Evento {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;
    @Basic
    @Column (name = "nombre")
    private String nombre;
    @Basic
    @Column (name = "descripcion")
    private String descripcion;
    @Basic
    @Column (name = "fecha")
    private String fecha;
    @Basic
    @Column (name = "hora")
    private String hora;
    @Basic
    @Column (name = "imagen")
    private String imagen;

    public Evento(int id, String nombre, String descripcion, String fecha, String hora, String imagen) {
        this.id = id;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.fecha = fecha;
        this.hora = hora;
        this.imagen = imagen;
    }

    public Evento() {
    }

    public int getId() {return id;}

    public void setId(int id) {this.id = id;}

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }

    public String getImagen() {return imagen;}

    public void setImagen(String imagen) {this.imagen = imagen;}

    @Override
    public String toString() {
        return "Evento{" +
                "id='" + id + '\'' +
                "nombre='" + nombre + '\'' +
                ", descripcion='" + descripcion + '\'' +
                ", fecha='" + fecha + '\'' +
                ", hora='" + hora + '\'' +
                ", imagen='" + imagen + '\'' +
                '}';
    }
}
