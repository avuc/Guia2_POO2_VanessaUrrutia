/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sv.udb.modelo;

/**
 *
 * @author Laboratorio
 */
public class Pers {
    private int codigo;
    private String nombre,apellido,genero,fecha,dui,nit,tipSangre;
    private String fechAlta, fechBaja;
    private int esta, codPer;
    private byte[] foto;

    @Override
    public String toString() {
        return "Pers{" + "nombre=" + nombre + '}';
    }

    public Pers() {
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public void setDui(String dui) {
        this.dui = dui;
    }

    public void setNit(String nit) {
        this.nit = nit;
    }

    public void setTipSangre(String tipSangre) {
        this.tipSangre = tipSangre;
    }

    public void setFechAlta(String fechAlta) {
        this.fechAlta = fechAlta;
    }

    public void setFechBaja(String fechBaja) {
        this.fechBaja = fechBaja;
    }

    public void setEsta(int esta) {
        this.esta = esta;
    }

    public void setCodPer(int codPer) {
        this.codPer = codPer;
    }

    public void setFoto(byte[] foto) {
        this.foto = foto;
    }

    public Pers(int codigo, String nombre, String apellido, String genero, String fecha, String dui, String nit, String tipSangre, String fechAlta, String fechBaja, int esta, int codPer, byte[] foto) {
        this.codigo = codigo;
        this.nombre = nombre;
        this.apellido = apellido;
        this.genero = genero;
        this.fecha = fecha;
        this.dui = dui;
        this.nit = nit;
        this.tipSangre = tipSangre;
        this.fechAlta = fechAlta;
        this.fechBaja = fechBaja;
        this.esta = esta;
        this.codPer = codPer;
        this.foto = foto;
    }

    public int getCodigo() {
        return codigo;
    }

    public String getNombre() {
        return nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public String getGenero() {
        return genero;
    }

    public String getFecha() {
        return fecha;
    }

    public String getDui() {
        return dui;
    }

    public String getNit() {
        return nit;
    }

    public String getTipSangre() {
        return tipSangre;
    }

    public String getFechAlta() {
        return fechAlta;
    }

    public String getFechBaja() {
        return fechBaja;
    }

    public int getEsta() {
        return esta;
    }

    public int getCodPer() {
        return codPer;
    }

    public byte[] getFoto() {
        return foto;
    }

}
