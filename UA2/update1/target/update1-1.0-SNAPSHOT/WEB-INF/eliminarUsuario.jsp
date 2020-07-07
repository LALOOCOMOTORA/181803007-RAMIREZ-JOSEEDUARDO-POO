<%-- 
    Document   : eliminarUsuario
    Created on : 19 jun. 2020, 21:04:59
    Author     : jose eduardo ramirez
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
  String usuario="";
   int id = 0,re=0;
   
     id = Integer.parseInt(request.getParameter("id"));
     Connection conexion = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", "");
            stmt = conexion.prepareStatement("SELECT * FROM usuario WHERE id_usuario=?");
            stmt.setInt(1, id);
            rs = stmt.executeQuery();
            rs.next();
            usuario = rs.getString("usuario");
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
%>
  <html>
    <head>
           <% if (id != 0) {%>
                    <div class="col">
                        <input type="hidden" class="form-control"  name="id_usuario" value="<%=id%>"/>
                    </div>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

        <title>eliminar</title>
    </head>
    <body>
        <div class="container">
        <h1>¿deseas eliminar al usuario?</h1><br>
        <td><a class="btn btn-primary btn-block" href="index.jsp"  method="POST">No</a></td>
        <td><a class="btn btn-danger btn-block" href"<%=elimi()%>"  method="POST">Si <%re=1;%></a></td>
         
    <%!    
       public static String elimi() {
           %> <h2>ingrese su nombre: </h2>
             <div class="col">
                        <input type="text"  class="form-control" placeholder="Nombre" name="usuario" required>
                    </div>
                    <br></br>   
                    <td><a class="btn btn-warningy btn-block" href="index.jsp"  method="POST">Regresar</a></td>
                    <td><a class="btn btn-danger btn-block" href="index.jsp"  method="POST">Eliminar</a></td>
                    <%
                    if(request.getParameter("usuario")==usuario){
                        
  
    try {
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", "");
        stmt = conexion.prepareStatement("DELETE usuario SET usuario=? WHERE id_usuario = ?");
        stmt.setString(1,request.getParameter("usuario"));
            stmt.setInt(2,Integer.parseInt(request.getParameter("id_usuario"))); 
       if (stmt.executeUpdate()>0) {
%>
                <div class="alert alert-success" role="alert">
                  <h2>Se realizó exitosamente la eliminacion  </h2>
                </div>
                <%}
 } catch (Exception e) {%>
    <form action="index.jsp" methode="POST" class="form" >
        <div class="alert alert-danger" role="alert">
                    <h2 align="center">La eliminacion no ha sido existosa</h2>
                    <input type="submit" class="btn btn-success btn-block" value="Regresar" />
                            
                 <%}%>   
                      
                    
                    <%}
else{
 %>
    <form action="index.jsp" methode="POST" class="form" >
        <div class="alert alert-danger" role="alert">
                    <h2 align="center">el nombre no coenside con la base de datos</h2>
                    <input type="submit" class="btn btn-success btn-block" value="Regresar" />
<%}%>
<%}%>
       %> 
        </html>
