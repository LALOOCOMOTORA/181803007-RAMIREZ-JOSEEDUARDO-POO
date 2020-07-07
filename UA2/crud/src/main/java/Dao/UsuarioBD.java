/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Dao;
import Config.Conexion;
import java.sql.*;
import java.util.List;
import java.util.ArrayList;
/**
 * 
 * @author jose eduardo ramirez
 */
public class UsuarioBD {
    private static final String listado="SELECT * from usuario";
    private Connection conexion=new Conexion().getConexion();
    private PreparedStatement stmt;
    private ResultSet rs;
    
    public List<Usuario> listadoUsuarios() throws SQLException{
        List<Usuario> usuarios=new ArrayList<>();
        this.stmt=this.conexion.prepareStatement(this.listado);
        this.rs=this.stmt.executeQuery();
        while (this.rs.next()){
            usuarios.add(new Usuario(this.rs.getInt("id_usuario"),this.rs.getString("usuario"),this.rs.getString("password"),this.rs.getInt("edad")));
        }
        return usuarios;
    
    }
     public List<Usuario> Usuarios() throws SQLException{
        List<Usuario> usuarios=new ArrayList<>();
        this.stmt=this.conexion.prepareStatement(this.listado);
        this.rs=this.stmt.executeQuery();
        while (this.rs.next()){
            usuarios.add(new Usuario(this.rs.getInt("id_usuario"),this.rs.getString("usuario"),this.rs.getString("password"),this.rs.getInt("edad")));
        }
        return usuarios;
    
    }

}
