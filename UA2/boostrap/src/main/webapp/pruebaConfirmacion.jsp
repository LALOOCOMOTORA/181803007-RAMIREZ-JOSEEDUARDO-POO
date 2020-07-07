<%-- 
    Document   : s
    Created on : 25 jun. 2020, 20:36:37
    Author     : jose eduardo ramirez
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
    
</body>
<%

    if (request.getParameter("id") != null) {

        Connection conexion = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {

            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", "");
            stmt = conexion.prepareStatement("DELETE FROM usuario WHERE id_usuario=?");
            stmt.setString(1, request.getParameter("id"));
            stmt.executeUpdate();
        } catch (Exception e) {
            out.print(e.getMessage());
        }
    }
%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar usuario</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    </head>
   

        <div   class="alert alert-success" role="alert">
            <h1 class="text-center" > El usuario fue eliminado  </h1>

            <div><a class="btn btn-primary btn-block"  href="index.jsp"> Regresar</a></div>

        </div>
    </body>
</html>