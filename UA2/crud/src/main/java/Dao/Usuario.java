/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Dao;

/**
 * 
 * @author jose eduardo ramirez
 */
public class Usuario {
    private int id_usuario;
    private String usuario;
    private String password;
    private int edad;
    public Usuario(){
    }

    public Usuario(int id_usuario, String usuario, String password, int edad) {
        this.id_usuario = id_usuario;
        this.usuario = usuario;
        this.password = password;
        this.edad = edad;
    }

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    @Override
    public String toString() {
        return "Usuario{" + "id_usuario=" + id_usuario + ", usuario=" + usuario + ", password=" + password + ", edad=" + edad + '}';
    }

   


}
