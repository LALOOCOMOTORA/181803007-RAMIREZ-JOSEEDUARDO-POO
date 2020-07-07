<%-- 
    Document   : eliminarUsuario
    Created on : 25 jun. 2020, 20:23:49
    Author     : jose eduardo ramirez
--%>


<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%
    int id = 0;
    String usuario = "";
    if (request.getParameter("id") != null) {
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
            id = rs.getInt("id_usuario");
        } catch (Exception e) {
            out.println("Error: " + e.getMessage());
        }
    }
%>


<html >
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <h1>Formulario eliminar </h1>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    </head>
    <body>
         <div  class="alert alert-success" role="alert">
            <h3 class="text-center" >¿Esta seguro de eliminar el usuario? <%out.print(usuario);%></h3>
        </div>
        <div><a class="btn btn-primary btn-block"  href="index.jsp">Cancelar</a></div>
        <div><a class="btn btn-danger btn-block"  href="pruebaConfirmacion.jsp?id=<%out.print(id);%>">Eliminar</a></div>
    </body>
</html>