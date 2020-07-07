<%-- 
    Document   : eliminarUsuario3.jsp
    Created on : 25 jun. 2020, 20:52:24
    Author     : jose eduardo ramirez
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
        Connection conexion = null;
        PreparedStatement stmt = null;
        int id = Integer.parseInt(request.getParameter("id"));  

    try {
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios","root","");
        stmt = conexion.prepareStatement("Delete FROM usuario WHERE id_usuario=?");
        stmt.setInt(1, id);
        stmt.executeUpdate();
        response.sendRedirect("index.jsp");
         %><div class="alert alert-success" role="alert">
               se elimino exitosa mente%>
</div>
    <%
        }catch(Exception e){
        out.print(e.getMessage());
    }
%>

  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
     <td><a class="btn btn-primary btn-block" href="index.jsp"  method="POST">Ver Registro</a></td>
     